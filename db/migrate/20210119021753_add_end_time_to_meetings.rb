class AddEndTimeToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :end_time, :time
  end
end
