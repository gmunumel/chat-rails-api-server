class AddUserToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :user_id, :integer, index: true
    add_foreign_key :chat_rooms, :users, column: :user_id, name: 'fk_rails_9231ksdasd'
  end
  
  def drop
    remove_foreign_key :chat_rooms, column: :user_id
    remove_column :chat_rooms, :user_id
  end
end
