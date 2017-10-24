class ArtWorksController < ApplicationController

  def index
    if params[:user_id]
      render json: ArtWork.where(artist_id: params[:user_id])
    else
      render plain: "No user is provided"
    end
  end

  def show
    @art_work = ArtWork.find(params[:id])
    if @art_work
      render json: @art_work
    else
      render json: @art_work.errors.full_messages
    end
  end

  def create
    @art_work = ArtWork.new(art_work_params)
    if @art_work.save
      render json: @art_work
    else
      render json: @art_work.errors.full_messages
    end
  end

  def destroy
    @art_work = ArtWork.find(params[:id])
    if @art_work.destroy
      render json: @art_work
    else
      render json: @art_work.errors.full_messages
    end
  end

  def update
    @art_work = ArtWork.find(params[:id])
    if @art_work.update(art_work_params)
      render json: @art_work
    else
      render json: @art_work.errors.full_messages
    end
  end



  private

  def art_work_params
    params.require(:art_work).permit(:title, :image_url, :artist_id)
  end

end
