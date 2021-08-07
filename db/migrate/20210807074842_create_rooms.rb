class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|

      t.integer :trainer_id
      t.integer :user

      t.timestamps
    end
  end
end
