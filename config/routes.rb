Rails.application.routes.draw do

  get("/", { :controller => "posts", :action => "index"})
  get("/posts", { :controller => "posts", :action => "index"})
  get("/posts/:id", { :controller => "posts", :action => "details"})
  

end
