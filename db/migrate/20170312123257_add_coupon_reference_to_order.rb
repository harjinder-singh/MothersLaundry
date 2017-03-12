class AddCouponReferenceToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :coupon, index: true, foreign_key: true
  end
end
