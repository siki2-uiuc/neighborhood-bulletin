Rails.application.routes.draw do

  get("/", { :controller => "posts", :action => "index"})
  get("/posts", { :controller => "posts", :action => "index"})
  get("/new_post", { :controller => "posts", :action => "new_post"})
  get("/create_post", { :controller => "posts", :action => "create"})
  get("/posts/:id", { :controller => "posts", :action => "details"})
  get("/delete_post/:id", { :controller => "posts", :action => "delete"})
  get("/edit_post/:id", { :controller => "posts", :action => "edit_form"})
  get("update_post/:id", { :controller => "posts", :action => "update"})

  get("/add_comment", { :controller => "comments", :action => "add_comment"})
  get("/delete_comment/:id", { :controller => "comments", :action => "delete"})

end
