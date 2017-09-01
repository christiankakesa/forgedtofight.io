# frozen_string_literal: true

Event.unscoped.where(type: :arena).delete_all
# Upcoming bots
[
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-10-04 10:00:00 PDT').utc,
    end_at: Time.parse('2017-10-05 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-10-02 10:00:00 PDT').utc,
    end_at: Time.parse('2017-10-04 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Crystal Bounty Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Progess',
    start_at: Time.parse('2017-09-30 10:00:00 PDT').utc,
    end_at: Time.parse('2017-10-02 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_crystal_bounty.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-28 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-30 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-09-27 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-28 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-24 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-27 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-21 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-24 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-09-20 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-21 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-18 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-20 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Crystal Bounty Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Progess',
    start_at: Time.parse('2017-09-16 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-18 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_crystal_bounty.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-14 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-16 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-09-13 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-14 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-10 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-13 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: '...',
    name_four_stars: '...',
    start_at: Time.parse('2017-09-07 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-10 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: nil
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-09-06 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-07 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: 'Unstoppable force',
    name_four_stars: 'Road rage',
    start_at: Time.parse('2017-09-04 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-06 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: Bot.where(name: 'Motormaster').first.id
  },
  {
    type: :arena,
    name: 'Crystal Bounty Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Progess',
    start_at: Time.parse('2017-09-02 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-04 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_crystal_bounty.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: 'Unstoppable force',
    name_four_stars: 'Road rage',
    start_at: Time.parse('2017-08-31 10:00:00 PDT').utc,
    end_at: Time.parse('2017-09-02 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: Bot.where(name: 'Motormaster').first.id
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-08-30 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-31 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: 'Repeat offender',
    name_four_stars: 'Power play',
    start_at: Time.parse('2017-08-27 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-30 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: Bot.where(name: 'Starscream').first.id
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: 'Repeat offender',
    name_four_stars: 'Power play',
    start_at: Time.parse('2017-08-24 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-27 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: Bot.where(name: 'Starscream').first.id
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-08-23 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-24 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: 'Twinkle toes',
    name_four_stars: 'Get cocky',
    start_at: Time.parse('2017-08-21 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-23 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: Bot.where(name: 'Sideswipe').first.id
  },
  {
    type: :arena,
    name: 'Crystal Bounty Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Progess',
    start_at: Time.parse('2017-08-19 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-21 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_crystal_bounty.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Bot Arena',
    name_three_stars: 'Twinkle toes',
    name_four_stars: 'Get cocky',
    start_at: Time.parse('2017-08-17 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-19 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: Bot.where(name: 'Sideswipe').first.id
  },
  {
    type: :arena,
    name: 'Mod Arena',
    name_three_stars: 'Progess',
    name_four_stars: 'Bot requirements',
    start_at: Time.parse('2017-08-16 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-17 9:59:59 PDT').utc,
    round: nil,
    image_url: '/assets/arena_1-day-mod.jpeg'
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: 'Mesured ambition',
    name_four_stars: 'Charged up',
    start_at: Time.parse('2017-08-13 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-16 9:59:59 PDT').utc,
    round: 2,
    image_url: nil,
    bot_id: Bot.where(name: 'Shockwave').first.id
  },
  {
    type: :arena,
    name: 'Featured Release Bot Arena',
    name_three_stars: 'Mesured ambition',
    name_four_stars: 'Charged up',
    start_at: Time.parse('2017-08-10 10:00:00 PDT').utc,
    end_at: Time.parse('2017-08-13 9:59:59 PDT').utc,
    round: 1,
    image_url: nil,
    bot_id: Bot.where(name: 'Shockwave').first.id
  }
].each do |event_arena|
  Event.upsert! event_arena
end
