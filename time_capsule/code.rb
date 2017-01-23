time_capsule = []

puts "Hello, welcome to the time capsule!"
sleep 1; puts "What is your name?"
name = gets.chomp

while true
  puts "#{name.downcase.capitalize}, what would you like to add to the time capsule?"
  puts "-- Type \"FINISHED\" if you are done adding items. --"
  print "\nItem: "
  item = gets.chomp

  if item.downcase == "finished"
    break
  else
    puts "#{item.capitalize}, great! How many of these would you like to add to the time capsule?"
    print "\nQuantity: "
    quantity = gets.chomp
    time_capsule << "* #{item.capitalize} (#{quantity})"
  end

end

puts "Thanks, #{name.downcase.capitalize}! here is a list of what you have officially stored in your time capsule:"
time_capsule.each { |items| sleep 0.2; puts items }
