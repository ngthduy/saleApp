class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_count_visit

  def index
    @products = Product.order(:title)
  end
 
end
