require "application_system_test_case"

class CustomerBookingsTest < ApplicationSystemTestCase
  setup do
    @customer_booking = customer_bookings(:one)
  end

  test "visiting the index" do
    visit customer_bookings_url
    assert_selector "h1", text: "Customer Bookings"
  end

  test "creating a Customer booking" do
    visit customer_bookings_url
    click_on "New Customer Booking"

    fill_in "Children", with: @customer_booking.children
    fill_in "Email", with: @customer_booking.email
    fill_in "Name", with: @customer_booking.name
    fill_in "Phonenumber", with: @customer_booking.phoneNumber
    click_on "Create Customer booking"

    assert_text "Customer booking was successfully created"
    click_on "Back"
  end

  test "updating a Customer booking" do
    visit customer_bookings_url
    click_on "Edit", match: :first

    fill_in "Children", with: @customer_booking.children
    fill_in "Email", with: @customer_booking.email
    fill_in "Name", with: @customer_booking.name
    fill_in "Phonenumber", with: @customer_booking.phoneNumber
    click_on "Update Customer booking"

    assert_text "Customer booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer booking" do
    visit customer_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer booking was successfully destroyed"
  end
end
