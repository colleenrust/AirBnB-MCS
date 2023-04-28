class AddRoomImageToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :room_image, :string
  end
end
