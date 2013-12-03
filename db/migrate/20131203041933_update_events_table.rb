class UpdateEventsTable < ActiveRecord::Migration
  def change
  	remove_column :events, :longitude, :integer
  	remove_column :events, :latitude, :integer  	
  	add_column :events, :longitude, :float
  	add_column :events, :latitude, :float  	
  end
end
