# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, required: true, unique: { scope: :type }
  field :type, type: Enum,
               default: :brawler,
               in: %i[brawler demolitions scout tactician tech warrior],
               required: true
  field :faction, type: Enum,
                  default: :autobots,
                  in: %i[autobots decepticons maximals predacons sharkticons],
                  required: true
  field :description, type: String
  field :icon_url, type: String
  field :image_url, type: String
  DEFAULT_INDEX = { stars_1: nil,
                    stars_2: nil,
                    stars_3: nil,
                    stars_4: nil }.freeze
  field :health, type: Hash, default: DEFAULT_INDEX
  field :attack, type: Hash, default: DEFAULT_INDEX
  field :max_rating_sig0, type: Hash, default: DEFAULT_INDEX
  field :max_rating_sig100, type: Hash, default: DEFAULT_INDEX

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
