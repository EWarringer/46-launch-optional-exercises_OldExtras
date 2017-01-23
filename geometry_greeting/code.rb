
def greet(name)
  puts "Hi #{name.downcase.capitalize}!"
end

puts "What is your name?"
name = gets.chomp
greet(name)
