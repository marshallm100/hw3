Rails.application.routes.draw do
  get 'journal/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/places", { :controller => "places", :action => "index"})
  get("/places/new", { :controller => "places", :action => "new"})
  post("/places", { :controller => "places", :action => "create"})
  get("/entries/", { :controller => "entries", :action => "show"})
  

end
