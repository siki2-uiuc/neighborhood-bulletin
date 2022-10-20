# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
class Post < ApplicationRecord
  validates(:body, { :presence => true})
  validates(:title, { :presence => true})

  def user
    my_author_id = self.author_id

    user = User.where({:id => my_author_id}).first

    return user
  end
end
