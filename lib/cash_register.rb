class CashRegister

  attr_accessor :total, :discount, :item_list

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = Array.new
  end

  def add_item(item, price, quantity=1)
    @item_list << item
    @total += (price * quantity)
  end
end
