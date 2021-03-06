class OrdersController < ApplicationController
  before_action: authenticate_user

  def create #needs to tested
    product = Product.find_by(id: params[:product_id])
    
    calculated_subtotal = product.price * params[:quantity]
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    
    order = Order.new(
    user_id: current_user.id, #inherited from applic. controller helper method
    product_id: params["product_id"],
    quantity: params["quantity"],
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total,

    )
    if order.save 
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages}, status: 422
    end
  end

  def show
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    # order = orders
    render json: order.as_json
  end

  def index
    orders = current_user.orders #needs to be tested
    if current_user
      render json: current_user.orders.as_json
    else
      render json: [], status: :unauthorized
    end
  end
end
