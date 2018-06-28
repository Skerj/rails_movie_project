class CommentsController < ApplicationController
	before_action :authentication_required
	before_action :user_info

	def create
		@comment = @commentable.comments.new comment_params
		@comment.user = user_info
		@comment.save
		redirect_to @commentable
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end
end
