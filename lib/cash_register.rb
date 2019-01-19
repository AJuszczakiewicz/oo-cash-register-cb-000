class CashRegister

  attr_accessor :total, :discount, :item_list

  def initialize(discount=1)
    @total = 0
    @discount = discount
    @item_list = Array.new
  end

  def add_item(item, price, quantity=1)
    self.item_list << item
    self.total += (price * quantity)
  end

  def apply_discount
  end
end
