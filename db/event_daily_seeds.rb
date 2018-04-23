# frozen_string_literal: true

require 'montrose'

# Event.unscoped.where(type: :daily).delete_all

events = []

Time.use_zone('UTC') do
  starts = Time.current.beginning_of_month
  ends = starts + 5.weeks

  Montrose.weekly(on: :monday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Brawler',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/brawler.png'
    }
  end
  Montrose.weekly(on: :tuesday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Warrior',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/warrior.png'
    }
  end
  Montrose.weekly(on: :wednesday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Scout Skirmish',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/scout.png'
    }
  end
  Montrose.weekly(on: :thursday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Tech',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/tech.png'
    }
  end
  Montrose.weekly(on: :friday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Demolition Derby',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/demolitions.png'
    }
  end
  Montrose.weekly(on: :saturday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions Tactician',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/tactician.png'
    }
  end
  Montrose.weekly(on: :sunday, at: '8:00 AM', starts: starts, until: ends).each do |date|
    events << {
      type: :daily,
      name: 'Daily missions for all',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/bot_classes/all_classes.png'
    }
  end
end

events.each do |event_daily|
  Event.upsert! event_daily
end
