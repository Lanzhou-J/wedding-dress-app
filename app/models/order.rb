class Order < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  belongs_to :dress

  # Add a dress key to the Order
  before_create :generate_key

  private

  # Generates a dash separated string that will represent a dress key
  def generate_key
    # Array of characters to sample form.
    chars = [*'A'..'Z', *'0'..'9']
    key = ''
    20.times do |i|
      # put a dash every 5 characters except the first one.
      key += '-' if (i % 5).zero? && i != 0
      key += chars.sample
    end
    # Set the orders dress key to this.
    self.dress_key = key
    end
end
