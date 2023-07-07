class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :name, :string
    add_column :users, :lastName, :string
  end
end
