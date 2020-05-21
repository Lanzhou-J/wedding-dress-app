class CartsController < ApplicationController
  def index
    @cart_dresses = load_cart
    @total = cart_total
    @price_string = total_to_string
  end

  def new
    @dress = Dress.find(cart_params[:dress_id])
    CartDress.create(cart: current_user.carts.last, dress: @dress)
  end

  def destroy
    item = CartDress.find(params[:id])
    item.destroy unless item.nil?
    redirect_to carts_path
  end

  private

  # Parameters that are allowed to be sent through
  def cart_params
    params.permit(:dress_id)
  end

  # Total cost of all items in the cart
  # Total cost includes the price of wedding dresses and shipping cost
  def cart_total
    sum = 0
    @cart_dresses.each do |item|
      item_total_price = item.dress.price + item.dress.shipping_cost
      sum += item_total_price
    end
    sum
  end

  # Loads all items from the Cart
  # Minimizing database queries
  def load_cart
    current_user.carts.last.cart_dresses.includes(:dress)
  end

  # Returns the total as a decimal with a '$'
  def total_to_string
    '$' + (@total / 100.0).to_s
  end
end
