# frozen_string_literal: true

require 'rack-timeout'

Rack::Timeout::Logger.disable unless 'test'.eql?(ENV['RACK_ENV'])
