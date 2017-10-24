class CommentsController < ApplicationController

  def index
    if params[:user_id]
      render json: Comment.where(user_id: params[:user_id])
    elsif params[:artwork_id]
      render json: Comment.where(artwork_id: params[:artwork_id])
    else
      render plain: "This is a plain old error"
    end
  end

end
