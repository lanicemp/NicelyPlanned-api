class ChangeDateAndTimeToDatetime < ActiveRecord::Migration[6.0]
  def change
    change_column :meetings, :date, 'date USING CAST(date AS date)'
    
  end
end
