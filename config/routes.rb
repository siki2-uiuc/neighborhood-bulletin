Rails.application.routes.draw do

  get("/", { :controller => "posts", :action => "index"})

end
