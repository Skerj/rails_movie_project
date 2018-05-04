class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def user_info
  	if logged_in?
  		user = User.find_by(id: session[:user_id])
  		@user = user
  	end
  end

  def authentication_required
  	if !logged_in?
  		redirect_to login_path
  	end
  end

  def logged_in?
  	session[:user_id]
  end
end
