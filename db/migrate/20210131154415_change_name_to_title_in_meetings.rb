class ChangeNameToTitleInMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :name
    add_column :meetings, :title, :string
  end
end
