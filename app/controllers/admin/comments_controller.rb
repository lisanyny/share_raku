class Admin::CommentsController < ApplicationController

  def index
    @comments = Comment.page(params[:page])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def commnet_params
    params.require(comment).permit(:customer_id, :event_id)
  end

end
