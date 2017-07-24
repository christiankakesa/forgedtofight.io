# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :icon_link, type: String

  belongs_to :bot_class, required: true, index: true
  belongs_to :bot_faction, required: true, index: true
end
