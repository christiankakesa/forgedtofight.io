# frozen_string_literal: true

# Loading resources
# 1. config/initializers
# 2. helpers
# 3. decks
# 4. models
# 5. validations
# 6. routes
[
  %w[config initializers],
  'helpers',
  'decks',
  'models',
  'routes',
  'validations'
].each do |path|
  Dir[File.join(*path, '*.rb')].each do |file|
    require_relative file
  end
end
