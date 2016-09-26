class ChangeRoomnoColumnTypeInRooms < ActiveRecord::Migration[5.0]
  def up
    change_column :rooms, :room_no, :integer
  end
  def down
    change_column :rooms, :room_no, :string
  end
end
