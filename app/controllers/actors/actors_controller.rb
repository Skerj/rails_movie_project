class ActorsController < ApplicationController
	before_action :authentication_required
	before_action :user_info

	def index
		@actors = Actor.all
		@actors = @actors.sort_by &:name
	end

	def new
		#raise params.inspect
		@actor = Actor.new
		@movie = Movie.find_by(id: params[:movie_id])
	end

	def edit
		@actor = Actor.find_by(id: params[:id])
		@movie = Movie.find_by(id: params[:movie_id])
	end

	def update
		#raise params.inspect
		@actor = Actor.find_by(params[:actor][:id])
		@actor.update(name: params[:actor][:name], age: params[:actor][:age])
		redirect_to actor_path(@actor)
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

	def destroy
		@actor = Actor.find(params[:id])
		@actor.destroy
		redirect_to actors_path
	end

	def oldest_actors
		@actors = Actor.oldest_actors
		#i = 0
	end

	def youngest_actors
		@actors = Actor.youngest_actors
	end

	private

	def actor_params
		params.require(:actor).permit(:movie_ids, :name, :age)
	end
end
