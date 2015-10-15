class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   
   
  protected 
  def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil
   end
   
   def authorize_user   
	  unless current_user 
		  redirect_to root_path, notice: "You do not have permission to do that."
		end
   end
   
   def new_user_only
	   if current_user 
		   redirect_to user_path(current_user.id), notice: "You do not have permission to do that."
		end
	end

end
