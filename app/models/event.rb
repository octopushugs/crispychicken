class Event < ActiveRecord::Base
	attr_accessible :location, :event_date, :event_time, :event_details, :event_user_id
end
