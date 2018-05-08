class WelcomeController < ApplicationController
	def home
		@hide_header = true
		if logged_in?
			@user = User.find_by(id: session[:user_id])
		else
			redirect_to login_path
		end
	end
end
