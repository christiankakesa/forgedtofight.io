# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :icon_link, type: String
  DEFAULT_PI_HEALTH_ATTACK = { stars_1: nil,
                               stars_2: nil,
                               stars_3: nil,
                               stars_4: nil }.freeze
  field :power_index, type: Hash, default: DEFAULT_PI_HEALTH_ATTACK
  field :health, type: Hash, default: DEFAULT_PI_HEALTH_ATTACK
  field :attack, type: Hash, default: DEFAULT_PI_HEALTH_ATTACK
  field :signature_ability, type: Hash, default: DEFAULT_PI_HEALTH_ATTACK

  belongs_to :bot_class, required: true, index: true
  belongs_to :bot_faction, required: true, index: true

  has_many :arena
  has_many :calendar_bot
  has_many :upcoming_bot
end
