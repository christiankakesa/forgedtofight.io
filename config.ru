# frozen_string_literal: true

require 'sprockets'

Thread.current[:_ftf_sprockets_env] ||= {}
%w[fonts images javascripts stylesheets].each do |resource|
  map "/#{resource}" do
    # Ensure that resources are computed once! It takes time!
    Thread.current[:_ftf_sprockets_env][resource] ||= Sprockets::Environment.new.tap do |env|
      env.append_path "assets/#{resource}"
      # if 'production'.eql?(ENV['RACK_ENV'])
      #   env.js_compressor  = :uglify
      #   env.css_compressor = :scss
      # end
    end
    run Thread.current[:_ftf_sprockets_env][resource]
  end
end

require_relative 'app'
run MainApp
