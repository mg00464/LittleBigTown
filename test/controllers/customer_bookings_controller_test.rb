require 'test_helper'

class CustomerBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_booking = customer_bookings(:one)
  end

  test "should get index" do
    get customer_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_booking_url
    assert_response :success
  end

  test "should create customer_booking" do
    assert_difference('CustomerBooking.count') do
      post customer_bookings_url, params: { customer_booking: { children: @customer_booking.children, email: @customer_booking.email, name: @customer_booking.name, phoneNumber: @customer_booking.phoneNumber } }
    end

    assert_redirected_to customer_booking_url(CustomerBooking.last)
  end

  test "should show customer_booking" do
    get customer_booking_url(@customer_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_booking_url(@customer_booking)
    assert_response :success
  end

  test "should update customer_booking" do
    patch customer_booking_url(@customer_booking), params: { customer_booking: { children: @customer_booking.children, email: @customer_booking.email, name: @customer_booking.name, phoneNumber: @customer_booking.phoneNumber } }
    assert_redirected_to customer_booking_url(@customer_booking)
  end

  test "should destroy customer_booking" do
    assert_difference('CustomerBooking.count', -1) do
      delete customer_booking_url(@customer_booking)
    end

    assert_redirected_to customer_bookings_url
  end
end
