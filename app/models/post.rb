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
end
