# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :type, type: Enum,
               default: :brawler,
               in: %i[brawler demolitions scout tactician tech warrior],
               required: true
  field :faction, type: Enum,
                  default: :autobots,
                  in: %i[autobots decepticons maximals predacons],
                  required: true
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

  has_many :arena
  has_many :calendar_bot
  has_many :upcoming_bot

  def type_name
    type.to_s.tr('_', ' ')
  end

  def faction_name
    type.to_s.tr('_', ' ')
  end
end
