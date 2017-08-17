# frozen_string_literal: true

UpcomingBot.delete_all
[
  {
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Shockwave').first.id
  },
  {
    start_at: Time.parse('2017-07-27 10:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Grimlock').first.id
  }
].each do |upcoming_bot|
  UpcomingBot.upsert! upcoming_bot
end
