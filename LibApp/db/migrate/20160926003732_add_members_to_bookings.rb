class AddMembersToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :members, :text
  end
end
