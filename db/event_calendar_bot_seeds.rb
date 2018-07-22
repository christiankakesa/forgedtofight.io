# frozen_string_literal: true

# Event.unscoped.where(type: :calendar_bot).delete_all

# Calendar's bot
[
  {
    type: :calendar_bot,
    start_at: Time.parse('2018-06-30 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Kickback', type: :scout).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2018-05-31 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Hound', type: :warrior).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2018-04-30 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Optiminus Primal', type: :brawler).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2018-03-31 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Megatron', type: :tactician).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-11-30 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Ramjet', type: :demolitions).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-10-31 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Grimlock', type: :brawler).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-09-30 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Starscream', type: :tactician).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-08-31 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Megatron', type: :demolitions).first.id
  },
  {
    type: :calendar_bot,
    start_at: Time.parse('2017-07-31 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Hot Rod', type: :warrior).first.id
  }
].each do |event_calendar_bot|
  Event.upsert! event_calendar_bot
end
