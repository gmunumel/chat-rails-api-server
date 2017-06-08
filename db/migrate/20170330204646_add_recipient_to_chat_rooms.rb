class AddRecipientToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :recipient_id, :integer, index: true
    add_foreign_key :chat_rooms, :users, column: :recipient_id
  end
  
  def drop
    remove_foreign_key :chat_rooms, column: :recipient_id
    remove_column :chat_rooms, :recipient_id
  end
end
