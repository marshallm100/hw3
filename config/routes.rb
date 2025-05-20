Rails.application.routes.draw do
  get 'journal/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/places", { :controller => "places", :action => "index"})
  get("/places/new", { :controller => "places", :action => "new"})
  post("/places", { :controller => "places", :action => "create"})
  get("/places/:id", { :controller => "places", :action => "show"})
  ``
  get("places/:id/entries/new", { :controller => "entries", :action => "new"})
  post("places/:id/entries", { :controller => "entries", :action => "create"})
  get("entries/:id", { :controller => "entries", :action => "show"})
 

end
