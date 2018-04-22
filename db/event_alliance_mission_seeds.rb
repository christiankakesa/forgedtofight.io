# frozen_string_literal: true

require 'montrose'

# Event.unscoped.where(type: :alliance_mission).delete_all

events = []
misson_duration_days = 4

Time.use_zone('UTC') do
  starts = Time.current.beginning_of_month
  ends = Time.current.end_of_month

  Montrose.weekly(on: :thursday, at: '19:00', starts: starts, until: ends).each do |date|
    events << {
      type: :alliance_mission,
      name: 'Alliance Mission',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (misson_duration_days * 24 * 60 * 60 - 1),
      round: nil,
      image_url: '/images/icon_alliance_mission.jpeg'
    }
  end
end

events.each do |event_alliance_mission|
  Event.upsert! event_alliance_mission
end
