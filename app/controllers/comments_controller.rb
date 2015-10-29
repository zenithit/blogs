class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
	    @micropost = Micropost.find(params[:micropost_id])
	    @comment = @micropost.comments.create({content: params[:comment][:content], micropost_id: params[:micropost_id], user_id: params[:user_id]}) 
	    if @comment.save
	      flash[:success] = "Comment created!"
	    else
	      flash[:danger] = "Comment can't be blank"
	    end
	    redirect_to @micropost
  	end

  	def destroy
  	end
end
