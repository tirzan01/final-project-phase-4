class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :post_likes

  validates :content, presence: true

  def liked?(user_id)
    self.post_likes.any?{ |post| post.user_id == user_id }
  end
end
