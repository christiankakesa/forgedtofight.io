# frozen_string_literal: true

require 'fast_gettext'
require 'syro'
require 'securerandom'

# Application bootstrap
require_relative 'boot'
require_relative 'lib/rack/session/nobrainer'

WebApp = Syro.new(BasicDeck) do
  unless @available_locales
    @available_locales = %w[en fr]
    FastGettext.available_locales = @available_locales
  end
  unless @text_domain
    @text_domain = 'forgedtofightio'
    FastGettext.text_domain = @text_domain
  end

  @accepted_language ||= lambda do
    next 'en' unless req.env.include?('HTTP_ACCEPT_LANGUAGE')
    current_language = req.env['HTTP_ACCEPT_LANGUAGE'][0, 2]
    @available_locales.include?(current_language) ? current_language : 'en'
  end

  lang = req['lang']
  lang = nil if lang.to_s.empty?
  FastGettext.set_locale(lang || session['lang'] || @accepted_language.call)
  session['lang'] = FastGettext.locale
  run Rack::Cascade.new([Home, Accounts])
end

MainApp = Rack::Builder.new do
  use Rack::Chunked
  use Rack::CommonLogger
  use Rack::ContentLength
  use Rack::ContentType, 'text/html'
  use Rack::Deflater
  use Shield::Middleware, '/login'
  use(Rack::Session::NoBrainer,
      secret: ENV['APP_COOKIE_SECRET'] || SecureRandom.hex(64),
      expire_after: Integer(ENV['APP_SESSION_EXPIRE_AFTER'] || 86_400))
  unless %w[production staging].include?(ENV['RACK_ENV'])
    use Rack::ShowExceptions
  end
  use Rack::Static, urls: ['/robots.txt'], root: 'public'
  use(Rack::Timeout,
      service_timeout: 20,
      wait_timeout: 30,
      wait_overtime: 60,
      service_past_wait: false)

  run(WebApp)
end
