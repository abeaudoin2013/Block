class UsersController < ApplicationController
before_action :new_user_only, only: [:new]
	
	def index 
		@user = current_user
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user, notice: "New accountant"
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
		@documents = @user.documents.last(10)
	end
	
	def destroy
		@user = current_user
		@user.destroy 
		session[:user_id] = nil
		redirect_to new_user_path, notice: "User account was deleted."
	end

private

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
		
end