# frozen_string_literal: true

class Bot
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true
  field :description, type: String
  field :power_index, type: Integer, unique: true
  field :attack_index, type: Integer, unique: true
  # TODO(fenicks): Go to user_bot model ?
  # field :rank, type: Integer
  # field :level, type: Integer
  # field :forge_level, type: Integer
end
