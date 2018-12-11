class CreateCustomerBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_bookings do |t|
      t.string :name
      t.string :email
      t.integer :children
      t.integer :phoneNumber

      t.timestamps
    end
  end
end
