class AddUsersToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :sender_email, :string, null: false

    add_column :rooms, :receiver_email, :string, null: false
  end
end
