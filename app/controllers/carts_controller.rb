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

  def create
  end

  private

  # Parameters that are allowed to be sent through
  def cart_params
    params.permit(:dress_id)
  end

  # Total cost of all items in the cart
  def cart_total
    sum = 0
    @cart_dresses.each do |item|
      sum += item.dress.price
    end
    return sum
  end

  # Loads all items from the Cart
  def load_cart
    current_user.carts.last.cart_dresses.includes(:dress)
  end

  # Returns the total as a decimal with a '$'
  def total_to_string
    '$' + (@total / 100.0).to_s
  end
end
