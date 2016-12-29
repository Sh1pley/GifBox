class Gif < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  validates :url, :category, presence: true, uniqueness: true
end
