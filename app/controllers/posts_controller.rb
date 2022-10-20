class PostsController < ApplicationController

  def index

    render({ :template => "post_templates/index.html.erb"})
  end
end
