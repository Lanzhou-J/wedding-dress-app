# Connected to a user, holds the CartDresses that they have added
class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_dresses, dependent: :destroy

  # Return the user that this cart belongs to
  def owner
    user.id
  end
end
