# frozen_string_literal: true

class Event
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :type,
        type: Enum,
        default: :arena,
        in: %i[arena upcoming_bot calendar_bot]
  field :name, type: String, required: false
  field :image_url, type: String
  field :start_at, type: Time, validates: { uniqueness: { scope: :type } }
  field :end_at, type: Time
  field :name_three_stars, type: String
  field :name_four_stars, type: String
  field :round, type: Integer

  index %i[type start_at]

  belongs_to :bot, required: false, index: true

  def type_name
    type.to_s.tr('_', ' ')
  end
end
