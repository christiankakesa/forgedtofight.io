# web: bundle exec shotgun --server=puma --port=${PORT:-5000} --env=${RACK_ENV:-development} config.ru
web: bundle exec puma -p ${PORT:-5000} -C config/puma.rb -e ${RACK_ENV:-development}
