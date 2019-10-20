class LikesController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    if liked?
      flash[:notice] = "すでにいいねしました。"
    else
    current_user.likes.create(place_id: params[:place_id])
    end
    redirect_to place_url(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    current_user.likes.find_by(place_id: @place).destroy
    redirect_to place_path(@place)
  end

  private
    def liked?
      Like.where(user_id: current_user.id, place_id:params[:place_id]).exists?
    end

end
