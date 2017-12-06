# frozen_string_literal: true

require 'nobi'

module Ftf
  module Helpers
    class NobiSigner
      def self.signer
        @nobi ||= Nobi::TimestampSigner.new(ENV['NOBI_SECRET'] || SecureRandom.hex(64))
      end

      def self.encode(str)
        signer.sign(str)
      end

      def self.decode(str, ttl = Float(ENV['NOBI_EXPIRE'] || 3600.0))
        signer.unsign(str, max_age: ttl)
      rescue Nobi::BadData
        nil
      end
    end
  end
end
