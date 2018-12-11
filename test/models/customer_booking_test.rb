require 'test_helper'

class CustomerBookingTest < ActiveSupport::TestCase

# test- check if a booking form cannot be saved if it is empty
  test 'Should not save an empty customer booking record' do
    booking = CustomerBooking.new
    booking.save
    refute booking.valid?
  end

end
