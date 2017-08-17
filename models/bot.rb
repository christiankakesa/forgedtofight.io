# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :icon_url, type: String
  field :image_url, type: String
  DEFAULT_INDEX = { stars_1: nil,
                    stars_2: nil,
                    stars_3: nil,
                    stars_4: nil }.freeze
  field :power_index, type: Hash, default: DEFAULT_INDEX
  field :health, type: Hash, default: DEFAULT_INDEX
  field :attack, type: Hash, default: DEFAULT_INDEX
  field :signature_ability, type: Hash, default: DEFAULT_INDEX

  belongs_to :bot_class, required: true, index: true
  belongs_to :bot_faction, required: true, index: true

  has_many :arena
  has_many :calendar_bot
  has_many :upcoming_bot
end
