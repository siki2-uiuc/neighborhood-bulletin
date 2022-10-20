class PostsController < ApplicationController

  def index

    all_posts = Post.all

    @list_of_posts = all_posts.order({:created_at => :asc})
    render({ :template => "post_templates/index.html.erb"})
  end
end
