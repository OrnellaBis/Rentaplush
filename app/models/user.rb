class User < ApplicationRecord
  has_many :bookings
  has_many :plushes

  validates :last_name, :first_name, :email, :password, presence: true
end
