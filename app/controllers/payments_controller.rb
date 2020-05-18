class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def success
    @dresses = current_user.carts.last.dresses
    Cart.create(completed: false, user_id: current_user.id)
  end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    puts "-"*20
    pp payment
    puts "-"*20
    dress_ids = payment.metadata.listing_ids.split(",")
    dresses = []
    dress_ids.each do |id|
      dress = Dress.find(id)
      dress.is_sold = true
      dress.save
    end
    user = User.find(payment.metadata.user_id)
    cart = user.carts.last
    cart.completed = true
    cart.save
    # need to void the cart
    head 200
  end

  def get_stripe_id
    @dresses = current_user.carts.last.dresses
    line_items = @dresses.map do |dress|
      {
        name: dress.name,
        description: dress.description,
        amount: (dress.price+dress.shipping_cost),
        currency: 'aud',
        quantity: 1,
      }
    end 
    dress_ids = @dresses.pluck(:id).join(",")
    session_id = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: line_items,
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          listing_ids: dress_ids
        }
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingIds=#{dress_ids}",
      cancel_url: "#{root_url}listings"
    ).id
    render :json => {id: session_id, stripe_public_key: Rails.application.credentials.dig(:stripe, :public_key)}
  end
end
