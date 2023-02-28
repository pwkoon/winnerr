class ListingCategory < ApplicationRecord
  belongs_to :listing
  belongs_to :category
  validates :listing_id, :category_id, presence: true
end
