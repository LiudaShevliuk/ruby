module CurrentCart
  private
  def set_cart
    @cart = Cart.find(session[:cart_id]) #перевірка, чи існує корзина
  rescue ActiveRecord::RecordNotFound #якщо не знайдено
    @cart = Cart.create #створюється нова коозина і записується її ідентифікатор
    session[:cart_id] = @cart.id
  end
end
