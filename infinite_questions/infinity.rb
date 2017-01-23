while true
  puts "Can I get you anything?"
  input = gets.chomp
  break if input.downcase == "no"
end
puts "Fine, NEXT!"
