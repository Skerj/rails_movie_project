class MoviesController < ApplicationController
	before_action :authentication_required
	before_action :user_info
	
	def index
		@movies = Movie.all
		@movies = @movies.sort_by &:title
	end

	def new
		@movie = Movie.new
	end

	def create
		#raise params.inspect
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to movie_path(@movie)
		else
			render :new
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :genre, actor_ids: [], actors_attributes: [:name, :age])
	end

end
