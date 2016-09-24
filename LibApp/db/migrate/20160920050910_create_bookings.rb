class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :booking_ID
      t.string :user
      t.string :email
      t.time :start_time
      t.time :end_time
      t.string :room_no
      t.date :booking_date
      t.string :building
      t.string :size

      t.timestamps
    end
  end
end
