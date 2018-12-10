class Booking < ApplicationRecord

  validates :children, presence: true
  validates :date, presence: true
  validates :title, presence: true
end
