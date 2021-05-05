class User < ApplicationRecord
  has_many :events, foreign_key: :creator, class_name: 'Event'
  has_many :attendees
  has_many :attended_events, through: :attendees, source: :event

  validates :name, presence: true, uniqueness: true
end
