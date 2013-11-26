class Event < ActiveRecord::Base
	belongs_to :user
	attr_accessible :location, :event_date, :event_time, :event_details, :user_id
end
