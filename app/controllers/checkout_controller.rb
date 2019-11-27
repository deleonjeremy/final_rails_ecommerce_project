# frozen_string_literal: true

class CheckoutController < ApplicationController
  def create
    @album = Album.find(params[:id])

    if @album.nil?
      redirect_to root_path
      return
    end

    # Setting up a Stripe Session for payment.
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @album.name,
        description: @album.description,
        amount: @album.price,
        currency: 'cad',
        quantity: 1
      }],
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js # render create.js.erb
    end
  end

  def success; end

  def cancel; end
end
