class ChangeUserIdColumn < ActiveRecord::Migration
  def change
  	add_column :events, :user_id, :integer
  	remove_column :events, :event_user_id, :integer
  end
end
