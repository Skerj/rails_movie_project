class SessionsController < ApplicationController
	def new
		@hide_header = true
		if logged_in?
			redirect_to root_path
		else
			@user = User.new
		end
	end

	def create
		#raise request.env["omniauth.auth"]["info"].inspect
		if auth_hash = request.env["omniauth.auth"]
			#raise auth_hash.inspect
			oauth_id = request.env["omniauth.auth"]["uid"]
			oauth_name = request.env["omniauth.auth"]["info"]["nickname"]
			oauth_email = request.env["omniauth.auth"]["info"]["email"]
			if user = User.find_by(id: oauth_id)
				#raise "1"
				session[:user_id] = user.id
				redirect_to root_path
			else
				#raise "2"
				user = User.create(id: oauth_id, username: oauth_name, email: oauth_email, password: SecureRandom.hex)
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
