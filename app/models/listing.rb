class Listing < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :listings_categories
  has_many :prices, dependent: :destroy
  has_many :projects, dependent: :destroy
  validates :title, :description, presence: true
end
