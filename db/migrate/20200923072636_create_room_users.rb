class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :users, foreign_key: true
      t.references :rooms, foreign_key: true
      t.timestamps
    end
  end
end
