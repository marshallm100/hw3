class EntriesController < ApplicationController
def index
  @entry = Entry.all
end

  def new

  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"] 
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]    
    @entry.save
  end

  def show 
    @entry = Entry.find_by({ "id" => params["id"] })
    @places = Place.find_by({ "id" => @entry.place_id})
  end 

  
end
