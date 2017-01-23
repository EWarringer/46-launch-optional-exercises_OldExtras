puts "Hello. What would you like to order?"
gets.chomp

2.times do
  puts "What did you say?"
  gets.chomp
end

puts "What did you say?"
input = gets.chomp

puts "Oh, okay. #{input.capitalize} coming right up!"
