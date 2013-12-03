class AddEventDetails < ActiveRecord::Migration
  def change
  	add_column :events, :event_details, :string
  end
end
