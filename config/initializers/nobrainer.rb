# frozen_string_literal: true

require 'nobrainer'

NoBrainer.configure do |config|
  unless ENV['APP_RETHINKDB_URL'].present?
    url = begin
            # This configuration is for resolving the loacal docker IPAddress
            docker_ip = +'docker inspect'
            docker_ip << " --format '{{ .NetworkSettings.IPAddress }}'"
            docker_ip << ' rethinkdb'
            IO.popen(docker_ip)
              .readlines[0]
              .chomp
          rescue StandardError => _
            'localhost'
          end
    db_env = ENV['RACK_ENV'] || 'development'
  end
  config.rethinkdb_url = ENV['APP_RETHINKDB_URL'] ||
                         "rethinkdb://#{url}:28015/forgedtofightio_#{db_env}"
end
