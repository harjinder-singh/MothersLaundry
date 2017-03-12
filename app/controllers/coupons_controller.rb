class CouponsController < ApplicationController

  def apply_coupon
    coupon_code = params[:coupon_code]
    coupon = Coupon.where(:code => coupon_code).first
    if coupon and coupon.status
      coupons_used = current_user.coupons_used.include? coupon_code
      coupons_ready = current_user.coupons_ready.include? coupon_code
      unless coupons_used
        if coupons_ready
          applied = "true"
        else
          current_user.coupons_ready << coupon_code
          current_user.save!
          applied = "true"
        end
      else
        applied = "false"
      end
    else
      applied = "false"
    end
    render :json => {coupon_applied: applied}
  end

  private 

end