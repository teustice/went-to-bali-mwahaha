class ChargesController < ApplicationController
  def new
    @amount = current_order.total_price
  end

  def create
    # Amount in cents
    @amount = current_order.total_price.to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    flash[:notice] = "Thanks, you paid $#{@amount}!"
    redirect_to products_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
