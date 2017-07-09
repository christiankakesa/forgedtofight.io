# frozen_string_literal: true

class BotClass
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
end
