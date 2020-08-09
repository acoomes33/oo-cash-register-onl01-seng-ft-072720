
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_trans_price
  
 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
     @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.last_trans_price = price * quantity
    total_price = price*quantity
    @total = self.total + total_price
    quantity.times {@items.push(title)}
  end
  
  def apply_discount
    if @discount > 0
      discounted_total = @total - (100.0 - @discount.to_f/100.0)*@total)
       "After the discount, the total come to $#{discounted_total}."
    else 
       "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    self.total -= self.last_trans_price
  end
  
end