class Category < ApplicationRecord
  validates :name, :description, presence: true
  has_many :listings, through: :listings_categories
end
