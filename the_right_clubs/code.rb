REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

required = [:driver, :pitching_wedge, :putter]

puts "\n~ Recommended golf club selection ~"
possible_club_selections.each { |club| puts "* Use the #{club}!"}
puts

missing_clubs= 0
required.each do |club|
  if possible_club_selections.index(club) == nil
    hash = {:driver => "driver", :putter => "putter", :pitching_wedge => "pitching wedge"}
    puts "WARNING! You will be without a #{hash[club]}!"
    missing_clubs += 1
  end
end

if missing_clubs == 0
  puts "You have all the best clubs today. Good Luck!"
end
