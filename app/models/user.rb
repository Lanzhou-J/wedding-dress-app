# All users of the platform will be a User object. With an optional shop for selling dresses.
# Every User will have a cart to store wedding dresses for purchase.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shop
  has_many :carts

  # Create an order cart for every user
  after_create :create_cart

  private

  def create_cart
    cart = Cart.new(user: self)
    cart.save
  end
end
