class Admin::CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def confirm
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_comments_path
  end

  private

  def commnet_params
    params.require(comment).permit(:customer_id, :event_id)
  end

end
