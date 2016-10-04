class RemoveUserIndex < ActiveRecord::Migration
  def change
    remove_index(:contacts, column: :user_id)
    add_index :contacts, [:user_id, :email], unique: true

    remove_index(:contact_shares, column: :contact_id, column: :user_id)
    add_index :contact_shares, [:contact_id, :user_id], unique: true
  end
end
