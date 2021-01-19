class CreateMyMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :my_meetings do |t|
      t.string :title
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :details
      t.integer :user_id

      t.timestamps
    end
  end
end
