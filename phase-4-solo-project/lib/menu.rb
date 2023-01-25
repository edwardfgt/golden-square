class Menu
  def initialize
    @menu = []
  end

  def return #returns the menu
    return @menu
  end
  
  def add_food(dish)
    @menu << dish #add a new instance of a Dish object to @menu
  end
  
  def del_food(dish) #remove an instance of Dish object from @menu
  end
end