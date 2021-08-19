class Plush < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :category, :price_per_day, :description, :localisation, :size, presence: true
end
