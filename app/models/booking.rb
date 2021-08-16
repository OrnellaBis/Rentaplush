class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plush

  validates :start_date, :end_date, presence: true
end
