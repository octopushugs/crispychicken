class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@users = User.all
	end

	def edit

	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			redirect_to events_path, :notice => "Welcome #{@user.firstname}!"
		else
			render "new"
		end
	end

	def update

	end

	def destroy

	end

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email)
	end
end
