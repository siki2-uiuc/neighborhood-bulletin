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

  def new_post

    render( :template => "post_templates/create_post.html.erb")
  end

  def create
    input_title = params.fetch("query_title")
    input_body = params.fetch("query_body")
    input_author = params.fetch("query_author")

    author = User.where({ :username => input_author}).first
    author_id = author.id

    new_post = Post.new
    new_post.title = input_title
    new_post.body = input_body
    new_post.author_id = author_id

    new_post.save

    redirect_to("/posts")
  end


end
