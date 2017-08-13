# frozen_string_literal: true

class Arena
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name_three_stars, type: String
  field :name_four_stars, type: String
  field :start_at, type: Time, uniq: true
  field :end_at, type: Time, uniq: true
  field :round, type: Integer, default: 1
  field :image_url, type: String

  index %i[name_three_stars name_four_stars round]

  belongs_to :bot, required: true, index: true
end
