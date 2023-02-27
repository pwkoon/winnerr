class Price < ApplicationRecord
  belongs_to :listing
  validates :tier, :amount, :description, presence: true
end
