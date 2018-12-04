class AddRoomCodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :room_code, :string
  end
end
