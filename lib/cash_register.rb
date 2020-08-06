
class CashRegister

    #I did this lab after we learned about attr's.  Looks cleaner though!

    attr_accessor :total, :discount, :items, :item_cost

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @item_cost = 0
    end

    def add_item(item_name, price, quantity=1)
        quantity.times do
            @items << item_name
        @total = @total + price
        end
        @item_cost = price * quantity
    end

    def apply_discount
       if @discount != 0 
            num = @total * ((100.0 - @discount)/100)
            @total = num.to_int
            "After the discount, the total comes to $#{@total}."
       else
            "There is no discount to apply."
       end
    end

    def void_last_transaction
        @total = @total - @item_cost
    end
end
