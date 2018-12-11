require 'test_helper'

class CustomerBookingTest < ActiveSupport::TestCase

# test- check if a booking form cannot be saved if it is empty
  test 'Should not save an empty customer booking record' do
    booking = CustomerBooking.new
    booking.save
    refute booking.valid?
  end

  test 'Should save valid booking' do
    booking = CustomerBooking.new
    booking.name = "Matt"
    booking.phoneNumber = "0123456789"
    booking.email = "Test@test.com"
    booking.children = "0"

    booking.save
    assert booking.valid?
  end
end
