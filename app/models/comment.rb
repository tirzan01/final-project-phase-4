class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :comment_likes
  has_many :comment_replies

  validates :content, presence: true

  def liked?(user_id)
    self.comment_likes.any?{ |post| post.user_id == user_id }
  end
end
