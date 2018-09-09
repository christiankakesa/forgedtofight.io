# frozen_string_literal: true

if %w[test production].include?(ENV['RACK_ENV'])
  require 'rack-timeout'
  Rack::Timeout::Logger.disable
end
