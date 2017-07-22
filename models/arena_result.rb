# frozen_string_literal: true

class ArenaResult
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :type, type: Enum, in: %i[four_stars three_stars], required: true
  field :nickname, type: String
  field :rank, type: Integer, required: true
  field :points, type: Integer, required: true
  field :rank_rewards,
        type: Enum,
        in: %i[rank_1_5 top_1_2 top_3_10 top_11_25 top_26_100 other],
        default: :top_26_100
  field :other_rewards_value, type: String

  belongs_to :arena, required: true, index: true
end
