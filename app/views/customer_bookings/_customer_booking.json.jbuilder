json.extract! customer_booking, :id, :name, :email, :children, :phoneNumber, :created_at, :updated_at
json.url customer_booking_url(customer_booking, format: :json)
