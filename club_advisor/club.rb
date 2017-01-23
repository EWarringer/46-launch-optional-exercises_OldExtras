advisor = {
  driver: 200,
  four_wood: 180,
  five_wood: 170,
  two_iron: 170,
  three_iron: 160,
  four_iron: 150,
  five_iron: 140,
  six_iron: 130,
  seven_iron: 120,
  eight_iron: 110,
  nine_iron: 95,
  pitching_wedge: 80,
  sand_Wedge: 20,
  putter: 0
}


print "How far are you from the hole?: "
distance = gets.chomp.to_i

choices = []
advisor.each { |club, yards| choices << yards if (distance - yards) >= 0 }

best_club = advisor.invert[choices.max]
puts "\nFrom #{distance} yards, use the #{best_club.to_s.gsub("_", " ")}!"
