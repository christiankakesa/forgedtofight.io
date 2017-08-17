# frozen_string_literal: true

CalendarBot.delete_all
[
  {
    start_at: Time.parse('2017-08-01 17:00:00 PDT').utc,
    image_url: nil,
    bot_id: Bot.where(name: 'Hot Rod').first.id
  }
].each do |calendar_bot|
  CalendarBot.upsert! calendar_bot
end
