class UsersController < ApplicationController

	

	def new
		@user = User.new
	end

	def create

		User.create(email: params[:email],first_name:params[:first_name], password:params[:password])
		redirect_to new_session_path
	
	end

	def destroy
	end
		

end
