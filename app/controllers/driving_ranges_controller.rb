class DrivingRangesController < ApplicationController

 def index
  
 end

 def show
  @place = Place.find(params[:id])
 end

end
