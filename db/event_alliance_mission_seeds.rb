# frozen_string_literal: true

require 'montrose'

# Event.unscoped.where(type: :alliance_mission).delete_all

events = []

Time.use_zone('UTC') do
  starts = Time.current.beginning_of_month
  ends = starts + 5.weeks + (1.day - 1.second)
  four_days = 4.days - 1.second
  puts "[EVENT_ALLIANCE_MISSION][PERIODE][start]: #{starts}"
  puts "[EVENT_ALLIANCE_MISSION][PERIODE][end  ]: #{ends}"

  Montrose.weekly(on: :thursday, at: '19:00', starts: starts, until: ends).each do |date|
    events << {
      type: :alliance_mission,
      name: 'Alliance Mission',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + four_days,
      round: nil,
      image_url: '/images/icon_alliance_mission.jpeg'
    }
  end
end

events.each do |event_alliance_mission|
  Event.upsert! event_alliance_mission
end
