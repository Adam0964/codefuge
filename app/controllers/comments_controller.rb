class CommentsController < ApplicationController

    before_filter :authenticate_user!, :except => [:show, :index]

    # @comment.create_activity :create, owner: current_user

	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    flash[:notice] = "Comment has been created!"
    respond_to do |format|
      format.html {redirect_to post_path(@post)}
      format.js
      end
    
  end

    def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
    

  
end
  

