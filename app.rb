# frozen_string_literal: true

require 'fast_gettext'
require 'rack-timeout'
require 'securerandom'
require 'syro'
require_relative 'boot'
require_relative 'lib/rack/session/nobrainer'

WebApp = Syro.new(BasicDeck) do
  unless @available_locales
    @available_locales = %w[en fr]
    I18n.available_locales = FastGettext.available_locales = @available_locales
  end
  unless @text_domain
    @text_domain = ENV['TEXTDOMAIN'] || 'forgedtofightio'
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
  session['lang'] = I18n.locale = FastGettext.locale
  run Rack::Cascade.new([Home, Accounts])
end

MainApp = Rack::Builder.new do
  use Rack::Chunked
  use Rack::CommonLogger
  use Rack::ContentLength
  use Rack::ContentType, 'text/html'
  use Rack::Deflater
  use(Rack::Session::NoBrainer,
      secret: ENV['APP_COOKIE_SECRET'] || SecureRandom.hex(64),
      expire_after: Integer(ENV['APP_SESSION_EXPIRE_AFTER'] || 3600),
      secure: 'production'.eql?(ENV['RACK_ENV']))
  use Rack::Static, urls: %w[/robots.txt /favicon.ico], root: 'public'
  use Rack::Timeout
  use Shield::Middleware, '/login'

  unless %w[production staging].include?(ENV['RACK_ENV'])
    require 'rack-mini-profiler'
    require 'memory_profiler'
    use Rack::MiniProfiler
    use Rack::ShowExceptions
  end

  run(WebApp)
end
