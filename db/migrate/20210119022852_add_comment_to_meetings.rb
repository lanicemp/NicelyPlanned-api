class AddCommentToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :comment, :string
  end
end
