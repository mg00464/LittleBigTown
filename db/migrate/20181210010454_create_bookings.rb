class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :booking do |t|
      t.string :Name, null: false
      t.text :Additional

      t.timestamps null: false
    end
  end
end
