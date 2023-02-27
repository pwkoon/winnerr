class Listing < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :listings_categories
  has_many :prices, :projects
  validates :title, :description, presence: true
end
