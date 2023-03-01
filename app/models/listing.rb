class Listing < ApplicationRecord
  belongs_to :user
  has_many :listing_categories
  has_many :categories, through: :listing_categories
  has_many :prices, dependent: :destroy
  has_many :projects, dependent: :destroy
  validates :title, :description, presence: true
  has_one_attached :photo
  accepts_nested_attributes_for :categories
end
