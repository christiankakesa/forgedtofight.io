# frozen_string_literal: true

# Loading resources
# 1. config/initializers
# 2. helpers
# 3. decks
# 4. models
# 5. routes
[
  %w[config initializers],
  'helpers',
  'decks',
  'models',
  'routes'
].each do |path|
  Dir[File.join(*path, '*.rb')].each do |file|
    require_relative file
  end
end
