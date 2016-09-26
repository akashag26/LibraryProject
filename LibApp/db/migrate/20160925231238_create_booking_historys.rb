class CreateBookingHistorys < ActiveRecord::Migration[5.0]
  def change
    create_table :booking_histories do |t|
      t.string :room_no
      t.string :user
      t.string :email
      t.date :booking_date
      t.string :startime
      t.string :building
      t.string :size
      t.integer :room_id
      t.string  :isCancelled
      t.string :endtime

      t.timestamps
    end
  end
end
