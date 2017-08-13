# frozen_string_literal: true

[
  {
    start_at: Time.parse('2017-07-27 10:00:00 PDT').utc,
    image_url: 'https://s3.eu-central-1.amazonaws.com/forgedtofightio/website/upcoming-bot/upcoming-bot_2017-07-27_grimlock.png',
    bot_id: Bot.where(name: 'Grimlock').first.id
  },
  {
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    image_url: 'https://s3.eu-central-1.amazonaws.com/forgedtofightio/website/upcoming-bot/upcoming-bot_2017-08-10_shockwave.png',
    bot_id: Bot.where(name: 'Shockwave').first.id
  }
].each do |upcoming_bot|
  UpcomingBot.upsert! upcoming_bot
end
