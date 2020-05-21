class CartDress < ApplicationRecord
  belongs_to :cart
  belongs_to :dress

  # Returns the ID of the user that this CartDress belongs to.
  def owner
    cart.user.id
  end
end
