# frozen_string_literal: true

class Relic
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :type, type: Enum,
               default: :relic_boot,
               in: %i[relic_boost relic_xp_boost]
  field :description, type: String
  field :tier, type: Hash, default: { one: nil,
                                      two: nil,
                                      three: nil }.freeze
  field :icon_url, type: String
  field :image_url, type: String

  def type_name
    type.to_s.tr('_', ' ')
  end
end
