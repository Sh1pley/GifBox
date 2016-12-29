class User < ActiveRecord::Base
  has_secure_password
  has_many :favorites
  has_many :gifs, through: :favorites
  validates :email, presence: true, uniqueness: true

  enum role: %w(default admin)
end