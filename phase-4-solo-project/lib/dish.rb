class Dish
  def initialize(item, cost) #item is a string, cost is an integer
    @item = item
    @cost = cost
  end

  def item
    return @item
  end
  
  def cost 
    return @cost
  end
end