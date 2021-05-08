class Attendance < ApplicationRecord
  self.table_name = 'attendees'

  belongs_to :user
  belongs_to :event
end
