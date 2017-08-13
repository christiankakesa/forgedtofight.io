# frozen_string_literal: true

class CalendarBot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :start_at, type: Time, unique: true
  field :image_url, type: String

  belongs_to :bot, required: true, index: true
end
