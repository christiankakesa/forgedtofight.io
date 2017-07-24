# frozen_string_literal: true

class BotClass
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true, index: true
  field :color, type: String, unique: true

  has_many :bot, dependent: :destroy
end
