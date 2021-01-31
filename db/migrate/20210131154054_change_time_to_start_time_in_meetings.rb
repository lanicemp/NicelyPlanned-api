class ChangeTimeToStartTimeInMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :time
    add_column :meetings, :start_time, :time
  end
end
