# frozen_string_literal: true

module Ftf
  module Helpers
    class UserMock
      def self.user
        @user ||= User.unscoped.upsert!(
          nickname: 'User Mock',
          email: 'user.mock@email-example.com',
          password: password,
          status: :active
        )
      end

      def self.get
        user
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
