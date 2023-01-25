require "menu"
require "dish"

class App
  def initialize(menu)
    @menu = menu
    @cart = []
  end
  
  def view_menu
    return @menu.return
  end
  
  def add_cart(dish)
    @cart << @menu.add_to_cart(dish)

    #add match to cart
  end

  def view_cart
    return @cart
  end
  
  def check_out
  #Adds up cart hash
  end
  
  def send_sms
  end
end