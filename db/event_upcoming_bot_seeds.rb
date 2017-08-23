# frozen_string_literal: true

Event.unscoped.where(type: :upcoming_bot).delete_all
# Upcoming bots
[
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-08-24 09:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Starscream').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Shockwave').first.id
  },
  {
    type: :upcoming_bot,
    start_at: Time.parse('2017-07-27 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Grimlock').first.id
  }
].each do |event_upcoming_bot|
  Event.upsert! event_upcoming_bot
end
