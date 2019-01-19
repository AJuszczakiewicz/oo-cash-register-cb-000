class CashRegister

  attr_accessor :total, :discount, :item_list

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = Array.new
  end

  def add_item(item, price, quantity=1)
    self.item_list << item
    self.total += (price * quantity)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * self.discount)/100
      "After the discount, the total comes to $#{self.total}."
    end

  end
end
