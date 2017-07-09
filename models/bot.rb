# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :power_index, type: Integer
  field :attack_index, type: Integer
  field :rank, type: Integer
  field :level, type: Integer
  field :forge_level, type: Integer
end
