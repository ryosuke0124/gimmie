class CoursesController < ApplicationController

 def index
 end

 def show
  @place = Place.find(params[:id])
 end

end
