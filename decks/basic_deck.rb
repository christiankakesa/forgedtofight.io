# frozen_string_literal: true

require 'mote'
require 'shield'
require 'tas'

# Fix: User always logged in.
#      Shield memoization doesn't clear @_shield.
module Shield
  module Helpers
    def authenticated(model)
      session[model.to_s] && model[session[model.to_s]]
    end

    def logout(model)
      session.delete(model.to_s)
      session.delete(:remember_for)
    end
  end
end

class BasicDeck < Syro::Deck
  include Ftf::Helpers
  include Mote::Helpers
  include Shield::Helpers

  def session
    req.session
  end

  def base_url
    req.base_url
  end

  begin
    require 'cgi/escape'
    unless CGI.respond_to?(:escapeHTML) # work around for JRuby 9.1
      CGI = Object.new
      CGI.extend(::CGI::Util)
    end
    def h(value)
      CGI.escapeHTML(value.to_s)
    end
  rescue LoadError
    ESCAPE_TABLE = { '&' => '&amp;',
                     '<' => '&lt;',
                     '>' => '&gt;',
                     '"' => '&quot;',
                     "'" => '&#39;' }.freeze
    if RUBY_VERSION >= '1.9'
      # Escape the following characters with their HTML/XML equivalents.
      def h(value)
        value.to_s.gsub(/[&<>"']/, ESCAPE_TABLE)
      end
    else
      def h(value)
        value.to_s.gsub(/[&<>"']/) { |s| ESCAPE_TABLE[s] }
      end
    end
  end

  def view
    @view ||= Tas.new do |params|
      mote(params[:src], params)
    end
  end

  def page
    @page ||= view.new.tap do |page|
      page[:src] = 'views/layout.mote'
      page[:content] = view.new
      page[:content][:app] = self
    end
  end

  def render(path, params = {})
    page[:title] = params.delete(:title) do
      _('ForgedToFight.IO - Unofficial Transformers Forged to Fight resources')
    end
    page[:request_fullpath] = req.fullpath
    page[:localized_fullpaths] = {}
    FastGettext.available_locales.each do |locale|
      path_with_locale = upsert_params(page[:request_fullpath], lang: locale)
      page[:localized_fullpaths][locale.to_sym] = path_with_locale
    end
    page[:content][:src] = path
    page[:content].update(params)
    res.html(page)
  end

  def partial(path, params = {})
    @partial ||= view.new.tap do |partial|
      partial[:content] = view.new
      partial[:content][:app] = self
    end
    @partial[:src] = path
    @partial[:content].update(params)
    @partial.to_s
  end

  def either(*segments)
    default { yield } if segments.any? { |segment| consume(segment) }
  end

  def user_mock
    UserMock
  end

  def signer
    NobiSigner
  end

  def flash_success(message)
    flash_add(:success, message)
  end

  def flash_info(message)
    flash_add(:info, message)
  end

  def flash_warning(message)
    flash_add(:warning, message)
  end

  def flash_danger(message)
    flash_add(:danger, message)
  end

  def flash_consume
    yield(session.delete(:flash) || {}) if block_given?
  end
  alias flash flash_consume

  private

  def flash_add(type, message)
    session[:flash] = {} unless session.include?(:flash)
    session[:flash][type] = [] unless session[:flash].include?(type)
    session[:flash][type] << message
  end

  def upsert_params(request_string, params = {})
    result = request_string
    params.each do |key, value|
      if !result.index('?')
        result += "?#{key}=#{value}"
      elsif !result.match("#{key}=")
        result += "&#{key}=#{value}"
      else
        result = result.gsub(/#{key}=[^&]*/, "#{key}=#{value}")
      end
    end
    result
  end
end
