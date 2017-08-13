# frozen_string_literal: true

[
  {
    start_at: Time.parse('2017-08-01 17:00:00 PDT').utc,
    image_url: 'https://s3.eu-central-1.amazonaws.com/forgedtofightio/website/calendars-bot/calendars-bot_2017-08_hot-rod.png',
    bot_id: Bot.where(name: 'Hot Rod').first.id
  }
].each do |calendar_bot|
  CalendarBot.upsert! calendar_bot
end
