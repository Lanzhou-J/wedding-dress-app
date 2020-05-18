class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shop
  has_many :carts

  after_create :create_cart

  private
  def create_cart
    cart = Cart.new(user: self)
    cart.save
  end
end
