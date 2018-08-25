# frozen_string_literal: true

require 'mail'

Mail.defaults do
  delivery_method :smtp,
                  address: ENV['APP_AWS_SES_ADDRESS'],
                  port: Integer(ENV['APP_AWS_SES_PORT'] || 587),
                  domain: ENV['APP_AWS_SES_DOMAIN'],
                  user_name: ENV['APP_AWS_SES_ID'],
                  password: ENV['APP_AWS_SES_SECRET']
end
