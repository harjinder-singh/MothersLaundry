class OrdersController < ApplicationController
  def new
    @order = current_user.orders.new
  end
  def create
    @order = current_user.orders.build(orders_params)
    @order.status_id = 1
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
  
  private 

  def orders_params
    params.require(:order).permit(:service_id, :collecting_date, :collecting_time, :delivery_date, :delivery_time, :area, :address)
  end
end
