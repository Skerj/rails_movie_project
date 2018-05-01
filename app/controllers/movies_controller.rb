class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		#raise params.inspect
		movie = Movie.create(movie_params)

		redirect_to movie_path(movie)
	end

	def show
		#raise params.inspect
		@movie = Movie.find(params[:id])
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :genre, actor_ids: [], actors_attributes: [:name, :age])
	end

end
