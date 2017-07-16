# frozen_string_literal: true

require 'sprockets'

map '/assets' do
  Thread.current[:_sprockets] ||= {}
  Thread.current[:_sprockets][:env] ||= Sprockets::Environment.new.tap do |env|
    env.append_path 'assets/fonts'
    env.append_path 'assets/images'
    env.append_path 'assets/javascripts'
    env.append_path 'assets/stylesheets'
    if 'production'.eql?(ENV['RACK_ENV'])
      env.js_compressor  = :uglify
      env.css_compressor = :scss
    end
  end
  run Thread.current[:_sprockets][:env]
end

require_relative 'app'
run MainApp
