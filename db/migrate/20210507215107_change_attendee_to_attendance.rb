class ChangeAttendeeToAttendance < ActiveRecord::Migration[6.1]
  def change
    rename_table :attendee, :attendance
  end
end
