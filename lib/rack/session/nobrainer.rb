# frozen_string_literal: true

# require 'no_brainer/lock'
require 'rack/session/abstract/id'

module Rack
  module Session
    # A NoBrainer document model for storing session data
    class NoBrainerSessionStore
      include NoBrainer::Document

      field :sid, type: Text, unique: true
      field :data, type: Hash, default: {}
      field :expires_at, type: Time

      index :sid
    end

    class NoBrainer < Abstract::Persisted
      def initialize(app, options = {})
        super
        @expire_after = options.fetch(:expire_after, 24 * 60 * 60)
      end

      def generate_sid
        loop do
          sid = super
          break sid unless _get(sid)
        end
      end

      def find_session(_env, sid)
        sid ||= generate_sid
        session_data = _get(sid)&.data
        puts "[1] #{session_data.inspect}"
        unless session_data
          session_data = {}
          _set(sid, session_data)
        end
        puts "[2] #{session_data.inspect}"
        [sid, session_data]
      end

      def write_session(_env, sid, session_data, _options)
        _set(sid, session_data) ? sid : false
      end

      def delete_session(_env, sid, options)
        _get(sid)&.destroy
        generate_sid unless options[:drop]
      end

      private

      def _set(sid, session_data)
        model = _get(sid) || NoBrainerSessionStore.new(
          sid: sid,
          expires_at: RethinkDB::RQL.new.now + @expire_after
        )
        model.update(data: session_data)
      end

      def _get(sid)
        NoBrainerSessionStore.where(sid: sid).first
      end
    end
  end
end
