
cart = {}

options = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug", "large Persian rug", "extra large Persian rug"]
options_downcase = []
options.each {|x| options_downcase.push(x.downcase)}

puts "Welcome! What would you like to buy today? I must say, the #{options.sample} just came in this morning!"
sleep 1.5

while true
  puts "\nPlease choose from the following items available: "
  options.each { |x| puts "- #{x}" }
  puts "type FINISHED when you are done"
  puts  "\nYour cart: "

  cart.each do |item, amount|
    puts "#{item}: #{amount}"
  end

  print "\nNext item: "
  next_item = gets.chomp

  if next_item.downcase == "finished"
    break
  elsif !(options_downcase.include? next_item.downcase)
    puts "#{next_item.capitalize}? We do not carry such an item."
    sleep 1.5
    redo
  end

  if cart[next_item].nil?
    cart[next_item] = 1
  else
    cart[next_item] += 1
  end

end

puts "Thank you for shopping. Here is a list of what you bought:"
sleep 0.3

cart.each do |item, amount|
  puts "~ #{item}: #{amount}"
  sleep 0.3
end
puts "Have a nice day!"
