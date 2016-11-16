class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_reference :users, :address, index: true, foreign_key: true
    add_column :users, :role, :string
  end
end
