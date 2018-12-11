class CustomerBooking < ApplicationRecord
  validates :name, :email, :phoneNumber, presence: true
end
