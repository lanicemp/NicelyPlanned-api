class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :detail
      t.string :contact

      t.timestamps
    end
  end
end
