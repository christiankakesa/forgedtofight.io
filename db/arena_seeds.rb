# frozen_string_literal: true

[
  {
    name_three_stars: 'Mesured ambition',
    name_four_stars: 'Charged up',
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-13 9:59:59 PDT').utc,
    round: 1,
    image_url: 'https://s3.eu-central-1.amazonaws.com/forgedtofightio/website/arena/featured-bot_2017-08-10_shockwave.jpeg',
    bot_id: Bot.where(name: 'Shockwave').first.id
  },
  {
    name_three_stars: 'Mesured ambition',
    name_four_stars: 'Charged up',
    start_at: Time.parse('2017-08-13 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-16 9:59:59 PDT').utc,
    round: 2,
    image_url: 'https://s3.eu-central-1.amazonaws.com/forgedtofightio/website/arena/featured-bot_2017-08-13_shockwave.jpeg',
    bot_id: Bot.where(name: 'Shockwave').first.id
  }
].each do |arena|
  Arena.upsert! arena
end
