# frozen_string_literal: true

# Loading resources
# 1. Initializers
# 2. Helpers
# 3. Decks
# 4. Models
# 5. Routes
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
