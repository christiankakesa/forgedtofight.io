# frozen_string_literal: true

class Relic
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :type, type: String
  field :description, type: String
  field :tier, type: Hash, default: { one: nil,
                                      two: nil,
                                      three: nil }.freeze
  field :icon_url, type: String
  field :image_url, type: String
end
