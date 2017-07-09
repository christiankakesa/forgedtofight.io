# frozen_string_literal: true

require 'sprockets'
map '/assets' do
  env = Sprockets::Environment.new
  env.append_path 'assets/fonts'
  env.append_path 'assets/images'
  env.append_path 'assets/javascripts'
  env.append_path 'assets/stylesheets'
  if 'production'.eql?(ENV['RACK_ENV'])
    env.js_compressor  = :uglify
    env.css_compressor = :scss
  end
  run env
end

require_relative 'app'
run MainApp
