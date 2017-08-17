# frozen_string_literal: true

class Relic
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :icon_url, type: String
end
