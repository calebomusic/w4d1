class AddContactColumnComments < ActiveRecord::Migration
  def change
    remove_column :comments, :author
    add_column :comments, :contact_id, :integer
    add_column :comments, :author_id, :integer
    change_column_null :comments, :author_id, false
  end
end
