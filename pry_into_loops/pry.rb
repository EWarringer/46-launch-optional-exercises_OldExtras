require "pry"

while true
  puts "Can I get you anything?"
  input = gets.chomp
  binding.pry
  break if input.downcase == "no"
end

puts "Fine, NEXT!"
