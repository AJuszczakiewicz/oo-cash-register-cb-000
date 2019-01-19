class CashRegister

  attr_accessor :total, :discount, :item_list

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price)
    @item_list << item
    @total += price
  end
end
