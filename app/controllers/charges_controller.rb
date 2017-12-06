class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount_in_dollars = session[:total_price]
    @amount = @amount_in_dollars * 100 #amount in cents
    @amount = @amount.round(0)

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
    if charge.paid && charge.amount == @amount
      customer = Customer.where('id = ?', current_customer.id).first
      order = customer.orders.build
      order.status = 'paid'
      order.save

      products_in_cart = session[:products_in_cart]

      session[:cart].each do |product, quantity|
        price = Product.find(product).price
        line_item = order.line_items.build
        line_item.product_id = product
        line_item.price = price
        line_item.quantity = quantity
        line_item.save
      end

      redirect_to home_url
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
