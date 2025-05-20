class PlacesController < ApplicationController

def index
  @places = Place.all
end


  def new
    
  end

  def create 
    @places = Place.new
    @places["name"] = params["name"]
    @places.save
    redirect_to "/places"
  end

  def show 
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place.id})
    @entry = Entry.new
  end 



end
