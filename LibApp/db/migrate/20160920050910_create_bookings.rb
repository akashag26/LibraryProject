class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :booking_ID
      t.string :user
      t.string :email
      t.string :start_time
      t.string :end_time
      t.string :room_no
      t.date :booking_date
      t.string :building
      t.string :size
      t.integer :room_id

      t.timestamps
    end
  end
end
