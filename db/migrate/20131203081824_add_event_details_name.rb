class AddEventDetailsName < ActiveRecord::Migration
  def change
  	add_column :events, :website, :string
  	add_column :events, :phone_number, :string
  	add_column :events, :rating, :string
  	add_column :events, :name, :string
  	add_column :events, :photo_reference, :string
  end
end
