game = [
  {Par: 5, Score: 7},
  {Par: 4, Score: 5},
  {Par: 3, Score: 3},
  {Par: 4, Score: 4},
  {Par: 4, Score: 4},
  {Par: 3, Score: 2},
  {Par: 4, Score: 5},
  {Par: 5, Score: 5},
  {Par: 4, Score: 5},
  {Par: 5, Score: 7},
  {Par: 4, Score: 4},
  {Par: 4, Score: 4},
  {Par: 3, Score: 3},
  {Par: 4, Score: 5},
  {Par: 4, Score: 5},
  {Par: 4, Score: 4},
  {Par: 3, Score: 3},
  {Par: 5, Score: 6}
]
strokes = 0
par = 0
game.each do |count|
  strokes += count[:Score]
  par += count[:Par]
end

puts "Total Strokes: #{strokes}"
puts "Total Par: #{par}"

if strokes > par
  puts "You were #{strokes - par} over par!"
elsif strokes == par
  puts "You were on par!"
else
  puts "You were #{par - strokes} under par! Impressive!"
end
