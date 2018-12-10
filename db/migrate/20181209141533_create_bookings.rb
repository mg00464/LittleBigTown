class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :title, null: false
      t.text :additionalRequirements
      t.integer :children, null: false
      t.date :date, null: false
      t.timestamps null: false
    end
  end
end
