
puts "Hello! Welcome to SmartVend™"
puts "Which item would you like today?"
snack = gets.chomp
puts "How many orders of #{snack.capitalize} would you like?"
num = gets.chomp

if (num.include? "tons") == true
  while true
    puts "* #{snack.upcase} *"
    tons = rand(0..14)
    break if tons == 0
  end
elsif num == num.to_i.to_s  # check if num = integer
  num.to_i.times {puts "* #{snack.upcase} *"}
else
  puts "I'm sorry, SmartVend™ does not understand your request."
  puts "Payment returned. Please try again later when you've learned numbers."
end

puts "Thank you for using SmartVend™"
