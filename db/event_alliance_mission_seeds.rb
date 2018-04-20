# frozen_string_literal: true

require 'montrose'

FTF_EVENT_TAKE ||= 4

Event.unscoped.where(type: :alliance_mission).delete_all

events = []

Time.use_zone('UTC') do
  Montrose.every(:week, on: :thursday, at: '19:00', starts: -1.days.from_now).take(FTF_EVENT_TAKE).each do |date|
    events << {
      type: :alliance_mission,
      name: 'Alliance Mission',
      name_three_stars: nil,
      name_four_stars: nil,
      start_at: date,
      end_at: date + (4 * 24 * 60 * 60 - 1),
      round: nil,
      image_url: '/assets/icon_alliance_mission.jpeg'
    }
  end
end

events.each do |event_alliance_mission|
  Event.upsert! event_alliance_mission
end
