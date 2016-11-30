class AddQuickOrderToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :quick_order, :boolean, :default => false
    add_column :orders, :email, :string
    add_column :orders, :name, :string
    add_column :orders, :phone_no, :string
  end
end
