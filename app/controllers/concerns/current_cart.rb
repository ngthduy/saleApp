module CurrentCart
  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  def set_count_visit
    session[:counter].nil? ? session[:counter] = 0 : session[:counter] += 1
  end
end
