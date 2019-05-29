class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
      "Check" => 0,
      "Credit card" => 1,
      "Purchase order" => 2
  }
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil # щоб товарна позиція не зникла при видаленні корзини
      line_items << item # додаємо товарну позицію до колекції для замовлення
    end
  end
end
