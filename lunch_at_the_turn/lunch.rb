
menu = {
  "hamburger" => 4.00,
  "hot dog" => 3.00,
  "fries" => 2.00,
  "chips" => 1.00,
  "water" => 1.25,
  "soda" => 1.50
}

puts "What would you like to order today?"
order = gets.chomp

total = 0
order.downcase.split(',').each do |food|
  if menu.include? food
    total += menu[food]
  else
    sleep 0.5; puts "We don't carry #{food}"
  end
end

sleep 0.5; puts "\nand Your total is #{'%.2f' % total}\n\n"
