class RemoveUserFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :user, :integer
  end
end
