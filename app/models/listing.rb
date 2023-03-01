class Listing < ApplicationRecord
  belongs_to :user
  has_many :listing_categories
  has_many :categories, through: :listing_categories
  has_many :prices, dependent: :destroy
  has_many :projects, dependent: :destroy
  validates :title, :description, presence: true
  has_one_attached :photo
  # TITLE = %w[Web-Design Graphic&Design Writing&Translation Music&Audio Video&Animation Programming&Tech]
  # validates :category_id, inclusion: { in: TITLE }
end
