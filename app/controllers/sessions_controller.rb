class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		#raise request.env["omniauth.auth"].inspect
		if auth_hash = request.env["omniauth.auth"]

		else
			user = User.find_by(username: params[:user][:username])
			if user && user.authenticate(params[:user][:password])
				session[:user_id] = user.id

				redirect_to root_path
			else
				redirect_to login_path
			end
		end
	end

	def destroy
		session.delete :user_id

		redirect_to login_path
	end
end
