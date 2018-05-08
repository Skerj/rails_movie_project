class SessionsController < ApplicationController
	def new
		if logged_in?
			redirect_to root_path
		else
			@user = User.new
		end
	end

	def create
		#raise request.env["omniauth.auth"].inspect
		if auth_hash = request.env["omniauth.auth"]
			#raise auth_hash.inspect
			oauth_email = request.env["omniauth.auth"]["email"]
			if user = User.find_by(:email => oauth_email)
				session[:user_id] = user.id
				redirect_to root_path
			else
				user = User.create(email: oauth_email)
				session[:user_id] = user.id
				redirect_to root_path
			end
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
