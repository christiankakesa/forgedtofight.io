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

      scope(:expired) { where(:expires_at.lt(RethinkDB::RQL.new.now)) }
    end

    class NoBrainer < Abstract::ID
      attr_reader :mutex

      DEFAULT_OPTIONS = Abstract::ID::DEFAULT_OPTIONS.merge drop: false

      def initialize(app, options = {})
        super
        @mutex = Mutex.new
        @expire_after = options.delete(:expire_after) { 24 * 60 * 60 }
        # TODO(fenicks): Fix the rake task which doesn't work.
        # Github issue: https://github.com/nviennot/nobrainer/issues/240
        # ::NoBrainer.sync_indexes
      end

      def generate_sid
        loop do
          sid = super
          break sid unless _exists?(sid)
        end
      end

      def get_session(env, sid)
        with_lock(env) do
          sid = generate_sid unless sid
          session = _get(sid)
          unless session
            session = {}
            _set sid, session
          end
          [sid, session]
        end
      end

      def set_session(env, sid, session, _options)
        with_lock(env) do
          ok = _set(sid, session)
          ok ? sid : false
        end
      end

      def destroy_session(env, sid, options)
        with_lock(env) do
          _delete(sid)
          generate_sid unless options[:drop]
        end
      end

      def with_lock(env)
        @mutex.lock if env['rack.multithread']
        yield
      ensure
        @mutex.unlock if @mutex.locked?
      end

      private

      def _set(sid, session)
        model = _exists?(sid) || NoBrainerSessionStore.new(
          sid: sid,
          expires_at: RethinkDB::RQL.new.now + @expire_after
        )
        model.data = session
        model.save
      end

      def _get(sid)
        model = _exists?(sid)
        model&.data
      end

      def _delete(sid)
        NoBrainerSessionStore.where(sid: sid).each(&:delete)
      end

      def _exists?(sid)
        NoBrainerSessionStore.where(sid: sid).first
      end
    end
  end
end
