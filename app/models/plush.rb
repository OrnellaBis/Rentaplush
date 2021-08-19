class Plush < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :category, :price_per_day, :description, :localisation, :size, presence: true
end
