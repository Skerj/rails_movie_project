class ActorsController < ApplicationController
	before_action :authentication_required
	before_action :user_info

	def index
		@actors = Actor.all
	end

	def new
		#raise params.inspect
		@actor = Actor.new
	end

	def create
		#raise params.inspect
		@actor = Actor.new(actor_params)
		if @actor.save
			redirect_to actor_path(@actor)
		else
			render :new
		end
	end

	def show
		@actor = Actor.find(params[:id])
	end

	private

	def actor_params
		params.require(:actor).permit(:movie_ids, :name, :age)
	end
end
