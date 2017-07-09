# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

begin
  require 'simplecov'
  SimpleCov.start
rescue
  puts '[ERROR]: SimpleCov is not loaded!'
end

require 'capybara/rspec'
require 'rack/test'

require_relative '../app'

# module Rack
#   module Test
#     class Session
#       alias old_env_for env_for
#       attr_writer :rack_session
#       def rack_session
#         @rack_session ||= {}
#       end

#       def env_for(path, env)
#         old_env_for(path, env).merge!('rack.session' => rack_session)
#       end
#     end
#   end
# end

module RSpecMixin
  include Rack::Test::Methods
  include Capybara::DSL
  # include FastGettext::Translation

  def app
    Rack::Lint.new MainApp
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include RSpecMixin
end

Capybara.app = Rack::Lint.new MainApp
