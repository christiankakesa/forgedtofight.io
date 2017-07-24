# frozen_string_literal: true

class BotFaction
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true, index: true

  has_many :bot, dependent: :destroy
end
