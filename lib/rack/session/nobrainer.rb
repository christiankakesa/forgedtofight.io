# frozen_string_literal: true

# require 'no_brainer/lock'
require 'rack/session/abstract/id'

module Rack
  module Session
    # A NoBrainer document model for storing session data
    class NoBrainerSessionStore
      include NoBrainer::Document

      table_config name: 'sessions'

      field :sid, type: Text, unique: true
      field :data, type: Hash, default: {}
      field :expires_at, type: Time

      index :sid
      index :expires_at

      # scope for deleting expired sessions
      scope(:expired, proc { where(:expires_at.lt(RethinkDB::RQL.new.now)) })
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
        ::NoBrainer::Lock.new("rack::session::nobrainer").synchronize do
          sid ||= generate_sid
          session_data = _get(sid)&.data
          unless session_data
            session_data = {}
            _set(sid, session_data)
          end
          [sid, session_data]
        end
      end

      def write_session(_env, sid, session_data, _options)
        ::NoBrainer::Lock.new("rack::session::nobrainer").synchronize do
          _set(sid, session_data) ? sid : false
        end
      end

      def delete_session(_env, sid, options)
        ::NoBrainer::Lock.new("rack::session::nobrainer").synchronize do
          _get(sid)&.destroy
          generate_sid unless options[:drop]
        end
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
