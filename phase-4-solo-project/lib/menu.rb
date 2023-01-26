class Menu
  def initialize
    @menu = []
  end

  def return #returns the menu
    output = []
    @menu.each { |menu| output << "#{menu.item}: #{menu.cost}"}
    return output
  end

  def add_to_cart(item)
    @menu.select do |menu|
      if menu.item == item
        return {:item => menu.item, :cost => menu.cost}
      end
    end
  end


  def add_food(dish)
    @menu << dish #add a new instance of a Dish object to @menu
  end
  
  def del_food(dish) #remove an instance of Dish object from @menu
  end
end