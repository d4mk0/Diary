class Note < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title, :text, :user_id

  scope :today, -> { where(date: Date.today) }
  scope :between_dates, ->(from_date, to_date) { where("date >= ? AND date <= ?", from_date, to_date) }
end
