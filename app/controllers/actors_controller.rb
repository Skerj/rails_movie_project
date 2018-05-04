class ActorsController < ApplicationController
	before_action :authentication_required
	before_action :user_info
	
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def create

	end

	def show
		@actor = Actor.find(params[:id])
	end
end
