class UsersController < ApplicationController
	def index
		# redirect_to events_path if not session[:user_id].nil?
		session[:person] = nil
		@user = User.new
	end

	def new 
		@user = User.new
	end

	def edit

	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			sign_in @user
			redirect_to events_path, :notice => "Welcome #{@user.firstname}!"
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
		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
	end
end
