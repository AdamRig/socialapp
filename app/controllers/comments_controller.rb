class CommentsController < ApplicationController

before_action :authorise

def create
     @post = Post.find params[:post_id]
     @comment = @post.comments.new(comment_params)
     @comment.user_id = @current_user.id		
     @comment.save					 										
	respond_to do |format|
		format.html { redirect_to @post }
      end
    end
	
	private
	def comment_params
		params.require(:comment).permit(:content, :post_id, :user_id)
	end
end
