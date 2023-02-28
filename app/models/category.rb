class Category < ApplicationRecord
  validates :name, :description, presence: true
  has_many :listing_categories
  has_many :listings, through: :listing_categories
end
