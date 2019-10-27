class PlacesController < ApplicationController

 def index
  @places1 = Place.where(variation: 0)
            .select('places.*', 'count(likes.id) AS favs')
            .left_joins(:likes)
            .group('places.id')
            .order('favs desc')

  @places2 = Place.where(variation: 1)
            .select('places.*', 'count(likes.id) AS favs')
            .left_joins(:likes)
            .group('places.id')
            .order('favs desc')
            
  @places3 = Place.where(variation: 2)
            .select('places.*', 'count(likes.id) AS favs')
            .left_joins(:likes)
            .group('places.id')
            .order('favs desc')

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
