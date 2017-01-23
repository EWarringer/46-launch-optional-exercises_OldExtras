
#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Jim Bob',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
### put your code here

# How many people voted in precinct 1?
puts "Precinct 1 had #{vote_results[0].inject(:+)} votes"

# Who was the winning candidate in Precinct 4?
winner = vote_results[3].index(vote_results[3].max)
puts "#{candidates[winner]} won Precinct 4"

# How many people voted for Jim Bob?
outcome = {
  "Jim Bob" => 0,
  "Sally Jane" => 0,
  "Billy Joe" => 0
}
vote_results.each do |votes|
  outcome["Jim Bob"] += votes[0]
  outcome["Sally Jane"] += votes[1]
  outcome["Billy Joe"] += votes[2]
end
puts "Jim Bob had #{outcome["Jim Bob"]} votes"

# How many people voted for Billy Joe?
puts "Billy Joe had #{outcome["Billy Joe"]} votes"

# How many people voted for Sally Jane?
puts "Sally Jane had #{outcome["Sally Jane"]} votes"

# How many people voted in total?
puts "There were #{outcome.values.inject(:+)} votes in total"

# Who had the most votes?
most_votes = outcome.values.max
puts "#{outcome.invert[most_votes]} had the most votes (#{most_votes})"
