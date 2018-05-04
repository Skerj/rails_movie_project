class ActorsController < ApplicationController
	before_action :authentication_required
	
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
