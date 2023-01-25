require "menu"

class App
  def initialize(menu)
    @menu = menu
  end
  
  def view_menu
    return @menu
  end
  
  def add_cart(dish)
  #takes dish as input, adds to cart hash
  end
  
  def check_out
  #Adds up cart hash
  end
  
  def send_sms
  end
end