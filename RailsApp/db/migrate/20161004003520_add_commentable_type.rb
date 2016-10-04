class AddCommentableType < ActiveRecord::Migration
  def change
    add_column :comments, :commentable_type, :string
    change_column_null :comments, :commentable_type, false
  end
end
