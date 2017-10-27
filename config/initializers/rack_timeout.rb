# frozen_string_literal: true

if 'test'.eql?(ENV['RACK_ENV'])
  require 'rack-timeout'
  Rack::Timeout::Logger.disable
end
