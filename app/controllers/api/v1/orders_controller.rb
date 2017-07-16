class Api::V1::OrdersController < ApplicationController

  before_action :authenticate_with_token!, only: [:index, :show, :create, :update, :destroy]

  def index
    orders = current_user.orders
    render json: orders, status: 201
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    if order
      render json: order, status: 201
    else
      render json: { errors: "record not found" }, status: 422
    end
  end

  def create
    if order.save
      render json: order, status: 201, location: [:api, current_user, order]
    else
      render json: { errors: order.errors }, status: 422
    end
  end

  private

    def order_params
      params.require(:order).permit(:product_ids => [])
    end

end
