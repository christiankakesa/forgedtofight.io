# frozen_string_literal: true

require 'rack/session/abstract/id'

module Rack
  module Session
    # A NoBrainer document model for storing session data
    class NoBrainerSessionStore
      include NoBrainer::Document
      include NoBrainer::Document::Timestamps

      field :sid, type: Text, unique: true
      field :data, type: Hash, default: {}
      field :expires_at, type: Time

      index :sid
    end

    class NoBrainer < Abstract::Persisted
      #DEFAULT_OPTIONS = Abstract::Persisted::DEFAULT_OPTIONS.merge drop: true

      def initialize(app, options = {})
        super
        @expire_after = options.fetch(:expire_after, 24 * 60 * 60)
      end

      def generate_sid
        loop do
          sid = super
          break sid unless _exists?(sid)
        end
      end

      def find_session(env, sid)
        sid ||= generate_sid
        session_data = _exists?(sid)&.data
        unless session_data
          session_data = {}
          _set(sid, session_data)
        end
        [sid, session_data]
      end

      def write_session(env, sid, session_data, options)
        _set(sid, session_data) ? sid : false
      end

      def delete_session(env, sid, options)
        _exists?(sid)&.destroy
        generate_sid unless options[:drop]
      end

      private

      def _set(sid, session_data)
        model = _exists?(sid) || NoBrainerSessionStore.new(
          sid: sid,
          expires_at: RethinkDB::RQL.new.now + @expire_after
        )
        model.update(data: session_data)
      end

      def _exists?(sid)
        NoBrainerSessionStore.where(sid: sid).first
      end
    end
  end
end
