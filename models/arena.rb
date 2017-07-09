# frozen_string_literal: true

class Arena
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, required: true, unique: true
  field :start_date, type: Time, required: true
  field :end_date, type: Time, required: true
  field :result_rank_1_5, type: Integer, default: 0
  field :result_top_1_2, type: Integer, default: 0 # percent
  field :result_top_3_10, type: Integer, default: 0 # percent
  field :result_top_1_25, type: Integer, default: 0 # percent
  field :result_top_26_100, type: Integer, default: 0 # percent
  field :result_point, type: Integer, default: 0 # just points result
  field :bot, type: Binary # Bot image

  has_many :arena_results, dependent: :destroy
end
