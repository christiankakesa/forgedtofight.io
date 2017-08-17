# frozen_string_literal: true

BotFaction.delete_all
[
  {
    name: 'Autobots'
  },
  {
    name: 'Decepticons'
  },
  {
    name: 'Maximals'
  },
  {
    name: 'Predacons'
  }
].each do |bot_faction|
  BotFaction.upsert! bot_faction
end
