class DeleteIndexContactSharesContactId < ActiveRecord::Migration
  def change
    remove_index :contact_shares, column: :contact_id
  end
end
