# frozen_string_literal: true

[
  {
    name: 'Brawler',
    color: '#7200ca'
  },
  {
    name: 'Demolitions',
    color: '#c7a500'
  },
  {
    name: 'Scout',
    color: '#009624'
  },
  {
    name: 'Tactician',
    color: '#0026ca'
  },
  {
    name: 'Tech',
    color: '#0088a3'
  },
  {
    name: 'Warrior',
    color: '#9b0000'
  }
].each do |bot_class|
  BotClass.upsert! bot_class
end
