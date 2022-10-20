# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  post_id    :integer
#
class Comment < ApplicationRecord

  def commenter
    post_author_id = self.author_id

    matching_users = User.where({ :id => post_author_id})
    user = matching_users.first
    return user
  end
end
