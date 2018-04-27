class ActorsController < ApplicationController
	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def create

	end

	def show
		@actor = Actor.find_by(params[:id])
	end
end
