class AddUserIdColumn < ActiveRecord::Migration
  def change
  	add_column :contacts, :user_id, :integer
  	add_index :contacts, :user 
  	add_column :users, :contacts_id, :integer
  	add_index :user, :contacts
  end
end
