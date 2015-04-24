class CommentsController < ApplicationController
	def create
	  @comment = Comment.new(comment_params)
	  @comment.feature_id = params[:feature_id]

	  @comment.save

	 
	  redirect_to feature_path(@comment.feature_id)
	end

	def comment_params
	  params.require(:comment).permit(:author, :body)
	end
end
