# frozen_string_literal: true

module Ftf
  module Helpers
    class UserMock
      def self.build
        @user ||= User.unscoped.upsert(
          username: 'User Mock',
          email: 'user.mock@email-example.com',
          password: password,
          status: :active
        ).tap(&:save)
      end

      def self.get
        build
      end

      def self.password
        'test'
      end

      def self.delete
        @user&.delete
        @user = nil
      end

      def self.mockable?
        'true'.eql?(ENV['APP_MOCK_USER']) &&
          !%w[production staging].include?(ENV['RACK_ENV'])
      end
    end
  end
end
