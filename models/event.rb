# frozen_string_literal: true

class Event
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :type,
        type: Enum,
        default: :arena,
        in: %i[arena calendar_bot daily upcoming_bot]
  field :name, type: String, required: false
  field :image_url, type: String
  field :start_at, type: Time, validates: { uniqueness: { scope: :type } }
  field :end_at, type: Time
  field :name_three_stars, type: String
  field :name_four_stars, type: String
  field :round, type: Integer

  index %i[type start_at]

  belongs_to :bot, required: false, index: true

  def self.calendar_bot
    year = Time.now.utc.year
    month = Time.now.utc.month
    where(type: :calendar_bot)
      .where(:start_at.gte => DateTime.new(year, month, 1, 0, 0, 0, 'UTC').to_time)
      .where(:start_at.lte => DateTime.new(year, month, -1, 23, 59, 59, 'UTC').to_time)
  end

  def self.next
    where(or: [{ :end_at.gte => RethinkDB::RQL.new.now },
               { :start_at.gte => RethinkDB::RQL.new.now }])
  end

  def self.upcoming_arena
    where(type: :arena)
      .where(:end_at.gte => RethinkDB::RQL.new.now)
      .where(:start_at.lte => RethinkDB::RQL.new.now)
  end

  def self.upcoming_bot
    where(type: :upcoming_bot)
      .where do |d|
        hours_24_ago = RethinkDB::RQL.new.now.to_epoch_time + (24 * 60 * 60)
        d[:start_at].to_epoch_time <= hours_24_ago
      end
  end

  def type_name
    type.to_s.tr('_', ' ')
  end
end
