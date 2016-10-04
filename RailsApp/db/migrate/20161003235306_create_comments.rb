class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :author, null: false
      t.timestamps
    end

    add_index :comments, :author
  end
end
