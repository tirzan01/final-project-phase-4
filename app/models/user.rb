class User < ApplicationRecord
  has_many :posts
  has_secure_password

  validates :user_name, :first_name, :last_name, :email, :password, :password_confirmation, presence: true
  validates :user_name, :email, uniqueness: true
  validates :user_name, :first_name, :last_name, :password, length: { minimum: 3 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
