class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:quick_order, :track_order]
  before_action :verified_user, :except => [:track_order, :quick_order]
  
  def new
    current_user.coupons_ready = []
    current_user.save
    @order = current_user.orders.new
  end
  def create
    @order = current_user.orders.build(orders_params)
    @order.status_id = 1
    debugger
    if current_user.coupons_ready.any?
      coupon = Coupon.where(code: current_user.coupons_ready.first).first
    end
    if coupon
      @order.coupon_id = coupon.id
    end
    
    if @order.save!
      redirect_to orders_path
      else
      redirect_to :back
    end
  end
  def show
    
  end
  def index
    @orders = current_user.orders
  end
  
  def quick_order
    @quick_order = Order.new(quick_order_params)
    @quick_order.status_id = 1
    @quick_order.quick_order =  true
    user = User.where(:email => params[:email]).first
    if user
      @quick_order.user_id = user.id
    end
    begin
      @quick_order.save!
      flash[:notice] = "Your order is under process with id #{@quick_order.id}. Our representative will call you in few minutes to confirm your order."
      redirect_to root_path
    rescue Exception => e
      flash[:notice] = e.message
      redirect_to :back
    end
  end
  
  def track_order
    @order = Order.where(id: params[:tracker]).first
    unless @order.present?
      flash[:error] = "No order found with Order no #{params[:tracker]}"
      redirect_to root_path
    end
  end
  private 

  def orders_params
    params.require(:order).permit(:service_id, :collecting_date, :collecting_time, :delivery_date, :delivery_time, :area, :address)
  end
  
  def quick_order_params
    params.permit(:name, :email, :phone_no, :service_id, :collecting_date, :collecting_time, :delivery_date, :delivery_time, :area, :address, :quick_order)
  end
  
  def verified_user
    unless current_user.phone_no.present?
      redirect_to verification_path  
    end    
  end
end
