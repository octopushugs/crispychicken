class EventsController < ApplicationController
	def index
		@event = Event.new
	end

	def show
		@events = Event.all
	end

	def edit

	end

	def create
		@event = Event.new(user_params)

		if @event.save
			redirect_to users_path, :notice => "I'm a geniussssssss!"
		else
			render "index"
		end
	end

	def update

	end

	def destroy
		session[:user_id] = nil
	end

	def user_params
		params.require(:event).permit(:location, :event_date, :event_time, :event_details, :user_id)
	end
end
