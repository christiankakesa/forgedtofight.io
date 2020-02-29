# frozen_string_literal: true

require 'digest/md5'

module Ftf
  module Helpers
    class Gravatar
      def self.get(email, size = 128, rating = 'g', default = 'mp')
        res = +'//www.gravatar.com/avatar/'
        res << Digest::MD5.hexdigest(email)
        res << "?s=#{size}&r=#{rating}&d=#{default}"
        res
      rescue StandardError
        "//www.gravatar.com/avatar?s=#{size}&r=#{rating}&d=#{default}"
      end
    end
  end
end
