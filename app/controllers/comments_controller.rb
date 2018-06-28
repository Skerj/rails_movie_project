class CommentsController < ApplicationController
	before_action :authentication_required
	before_action :user_info

	def index

	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		#raise params.inspect
		@comment = Comment.new

	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to comment_path(@comment)
		else
			render :new
		end
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def comment_params
		params.require(:comment).permit(:movie_ids, :actor_ids, :user_ids, :body, :commentable_ids, :commentable_type)
	end
end
