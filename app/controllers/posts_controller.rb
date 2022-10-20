class PostsController < ApplicationController

  def index

    all_posts = Post.all

    @list_of_posts = all_posts.order({:created_at => :asc})
    render({ :template => "post_templates/index.html.erb"})
  end

  def details
    post_id = params.fetch("id")

    matching_posts = Post.where({ :id => post_id})

    @the_post = matching_posts.first

    render({ :template => "post_templates/show.html.erb"})
  end
end
