class EntriesController < ApplicationController
def index
  @entries = Entry.all
end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"] 
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]    
    @entry.save
    redirect_to "/entries"
  end

  def show 
   
  @entry = Entry.find_by("id" => params["id"])
  if @entry != nil
    @place = Place.find_by("id" => @entry.place_id)
  end 
  end 

  
end
