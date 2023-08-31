class OrdersController < ApplicationController
  def index
    @customer = User.find(params[:user_id])
    @orders = @customer.orders
    render json: @orders
  end

  def show
    @user = User.find(params[:user_id])
    @order = @user.orders.find(params[:id])
    render json: @order, include: :product
  end
end
