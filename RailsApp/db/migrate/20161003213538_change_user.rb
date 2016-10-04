class ChangeUser < ActiveRecord::Migration
  def change
    remove_columns :users, [:name, :email]

    add_column :users, :username, :string
    add_index :users, :username, unique: true

    change_column_null(:users, :username, false) 
  end
end
