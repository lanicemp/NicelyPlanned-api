class RemoveContactFromMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :contact
  end
end
