class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :sender_email
      t.string :receiver_email

      t.timestamps
    end
  end
end
