class CommentsController < ApplicationController
  def add_comment
    post_id = params.fetch("query_post_id")

    commenting_author_name = params.fetch("query_author_name")
    comment_body = params.fetch("query_comment")

    commenting_author = User.where({ :username => commenting_author_name}).first
    commenting_author_id = commenting_author.id

    new_comment = Comment.new
    new_comment.post_id = post_id
    new_comment.author_id = commenting_author_id
    new_comment.body = comment_body

    new_comment.save

    redirect_to("/posts/#{new_comment.post_id}")
  end
end
