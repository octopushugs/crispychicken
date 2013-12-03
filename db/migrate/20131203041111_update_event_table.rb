class UpdateEventTable < ActiveRecord::Migration
  def change
  	add_column :events, :longitude, :integer
  	add_column :events, :latitude, :integer
  	add_column :events, :address, :string
  	remove_column :events, :event_details, :string
  end
end