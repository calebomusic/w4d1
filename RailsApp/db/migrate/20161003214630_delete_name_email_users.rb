class DeleteNameEmailUsers < ActiveRecord::Migration
  def change
    remove_columns :users, :name, :email
  end
end
