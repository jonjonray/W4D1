class ArtworkSharesController < ApplicationController

  def create
    @artwork_share = ArtworkShare.new(params[:artwork_share].permit(:viewer_id, :artwork_id))
    if @artwork_share.save
      render json: @artwork_share
    else
      render json: @artwork_share.errors.full_messages
    end
  end

  def destroy
    @artwork_share = ArtworkShare.find(params[:id])
    if @artwork_share.destroy
      render json: @artwork_share
    else
      render json: @artwork_share.errors.full_messages
    end
  end

end
