class ChargesController < ApplicationController
  def new
    @price = current_order.total_price
  end
end
