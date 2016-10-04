class RemoveAuthorAddObject < ActiveRecord::Migration
  def change
    remove_column :comments, :author_id

    add_column :comments, :object_id, :integer
  end
end
