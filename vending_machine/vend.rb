items = "chips popcorn skittles clif bar mentos gum cheetos m&ms"
puts "What item would you like?"

input = gets.chomp
item_index = items.index(input)

if item_index.nil?
  puts "We don't have that item."
else
  puts "Item index:"
  puts item_index
end
