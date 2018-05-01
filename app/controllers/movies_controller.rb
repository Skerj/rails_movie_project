class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		#raise params.inspect
	end

	def show
		@movie = Movie.find_by(params[:id])
	end
end
