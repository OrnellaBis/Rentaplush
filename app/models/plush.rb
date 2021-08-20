class Plush < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  validates :name, :category, :price_per_day, :description, :localisation, :size, presence: true
end
