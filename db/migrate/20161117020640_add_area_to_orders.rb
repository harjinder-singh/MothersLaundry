class AddAreaToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :area, :string
    add_column :orders, :address, :string
    change_column :orders, :collecting_time, :string
    change_column :orders, :delivery_time, :string
  end

end
