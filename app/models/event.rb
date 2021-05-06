class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees
  scope :previous_events, -> { where('date < ?', Time.now) }
  scope :upcoming_events, -> { where('date > ?', Time.now) }
end
