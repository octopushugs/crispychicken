class AddEventName < ActiveRecord::Migration
  def change
 	add_column :events, :event_name, :string  	
  end
end
