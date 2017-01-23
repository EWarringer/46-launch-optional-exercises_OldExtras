# class Pizza
#
#   def initialize(*toppings)
#     @toppings = toppings.insert(0, :cheese)
#   end
#
#   def cost
#     cost = {cheese: 0.10, green_pepper: 0.30, onion: 0.50, mushroom: 0.70, pepperoni: 1.10, jalapeno: 1.30, sausage: 1.70, bacon: 1.90}
#     total = 0
#     @toppings.each {|item| total += cost[item]}
#     puts total
#   end
#
#   def meats
#     meats = @toppings - [:cheese, :green_pepper, :onion, :mushroom, :jalepeno]
#     puts meats
#   end
#
#   def other_toppings
#     other = @toppings - [:sausage, :pepperoni, :bacon]
#     puts other
#   end
#
# end
if 
