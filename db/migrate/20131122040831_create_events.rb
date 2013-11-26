class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.date :event_date
      t.time :event_time
      t.text :event_details
      t.integer :event_user_id

      t.timestamps
    end
  end
end
