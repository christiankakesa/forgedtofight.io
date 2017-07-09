# frozen_string_literal: true

workers Integer(ENV['APP_WORKERS'] || 2)
threads_count = Integer(ENV['APP_MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT'] || ENV['APP_PORT'] || 3000
environment ENV['RACK_ENV'] || 'development'

before_fork do
  ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)
end

# This is called everytime a worker is to be started.
#
# on_worker_fork do
#   puts 'Before worker fork...'
# end

# This is called everytime a worker is to be started.
#
# after_worker_fork do
#   puts 'After worker fork...'
# end

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

# This is called everytime a worker is to about to shutdown.
#
# on_worker_shutdown do
#   puts 'On worker shutdown...'
# end
