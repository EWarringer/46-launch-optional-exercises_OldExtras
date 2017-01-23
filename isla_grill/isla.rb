dinner_total = 178

tip = [15, 18, 20, 25].sample

tip_total = dinner_total * (tip.to_f/100)

puts "your total tip is $#{tip_total}"
