class AddArrayToUser < ActiveRecord::Migration
  def change
    add_column :users, :coupons_ready, :text, array:true, default: []
    add_column :users, :coupons_used, :text, array:true, default: []
  end
end
