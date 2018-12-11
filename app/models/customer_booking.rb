class CustomerBooking < ApplicationRecord
  # required fields
  validates :name, :email, :phoneNumber, presence: true
  # ensures only numbers are enter in the phone number
  validates :phoneNumber, numericality: { only_integer: true } 
end
