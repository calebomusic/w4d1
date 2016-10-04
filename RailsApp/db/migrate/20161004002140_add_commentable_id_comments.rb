class AddCommentableIdComments < ActiveRecord::Migration
  def change
    remove_column :comments, :contact_id

    add_column :comments, :commentable_id, :integer
    change_column_null :comments, :commentable_id, false
  end
end
