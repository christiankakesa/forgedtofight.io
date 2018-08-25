# frozen_string_literal: true

require 'nobi'

module Ftf
  module Helpers
    class NobiSigner
      def self.signer
        @signer ||= Nobi::TimestampSigner.new(ENV['APP_NOBI_SECRET'] || SecureRandom.hex(64))
      end

      def self.encode(str)
        signer.sign(str)
      end

      def self.decode(str, ttl = Float(ENV['APP_NOBI_EXPIRE'] || 86_400.0))
        signer.unsign(str, max_age: ttl)
      rescue Nobi::BadData
        nil
      end
    end
  end
end
