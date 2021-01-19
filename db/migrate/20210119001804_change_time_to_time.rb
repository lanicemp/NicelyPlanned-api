class ChangeTimeToTime < ActiveRecord::Migration[6.0]
  def change
    change_column :meetings, :time, 'time USING CAST(time AS time)'
  end
end
