class CheckoutsController < ApplicationController
  before_action :authenticate_user!

  def show
          current_user.processor = :stripe
          current_user.customer

          @checkout_session = current_user.payment_processor.checkout(
              mode: "subscription",
              line_items: "swiftruby_monthly"
          )
  end
end