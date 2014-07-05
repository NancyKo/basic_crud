class CreateJoinTableUserContact < ActiveRecord::Migration
  def change
    create_join_table :contacts, :users do |t|
      t.index [:contact_id, :user_id]
      t.index [:user_id, :contact_id]
    end
  end
end
