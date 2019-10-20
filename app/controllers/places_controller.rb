class PlacesController < ApplicationController

 def index
  @places = Place.all
  @rank = Place.find(Like.group(:place_id).order('count(place_id) desc').limit(5).pluck(:place_id))
  # @rank = Place.find(Like.group(:place_id).order('count(place_id) desc').limit(5).pluck(:place_id))
  # @course_rank = []
  # @driving_range_rank = []
  # @shop_rank = []
  # @rank.each do |rank|
  #   if rank.variation == "course"
  #     @course_rank << rank
  #   elsif rank.variation == "driving_range"
  #     @driving_range_rank << rank
  #   else
  #     @shop_rank << rank
  #   end
  # end
 end

 def show
  @place = Place.find(params[:id])
 end

end
