class Event < ActiveRecord::Base
    belongs_to :user
    attr_accessible :location, :event_date, :event_time, :event_details, :user_id, :latitude, :longitude, :event_name, :address, :website, :phone_number, :rating, :name, :photo_reference

    geocoded_by :location
    after_validation :geocode

    reverse_geocoded_by :latitude, :longitude, :address => :address
    after_validation :reverse_geocode
end
