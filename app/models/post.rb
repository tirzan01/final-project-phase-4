class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :post_likes

  validates :content, presence: true
end
