class SessionsController < ApplicationController
before_action :new_user_only, only: [:new]

	def new
		@documents = Document.last(5)
	end

	def create
		@user = User.find_by(email: params[:email])
		if @user and @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to @user, notice: "logged in the face"
		else 
			redirect_to login_path, notice: "you was wronged"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path, notice: "logged outz"
	end	

end