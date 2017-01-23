# I had a lot of fun on this one and added some stuff. hope you like it!
require 'pry'

puts "\n~ Welcome to NumberGuess® ~"
print "\nChoose difficulty. Enter \"easy\" or \"hard\": "
difficulty = gets.chomp.downcase

if difficulty == "easy"
  puts "Easy it is!"
  num = 10
elsif difficulty == "hard"
  puts "Go big or go home! Hard it is!"
  num = 20
else
  # for any response besides easy or hard, player must guess between 1 and 100
  puts "\n\n\n\n\nWe do not understand your request..."
  # "sleep 2" adds 2 seconds of time before next line of code for a funny/cool effect
  sleep 2 ; puts "\n\n...and we don't like that kind of thing..."
  sleep 2 ; puts "\n\nGood Luck\n\n\n\n"
  num = 100
end

correct_num = rand(1..num).to_s
sleep 1
print "I am thinking of a number between 1 and #{num}. Guess the number: "
counter = 0

while true
  guess = gets.chomp
  # user may type "cheat" instead of an integer to view the pry screen
  # If user typed "this game sucks" for a difficulty, cheating is disabled while guessing 1 - 100
  unless difficulty.downcase == "this game sucks"
    if guess.downcase == "cheat"

      # # # # # # # # # # # # # # # # # # # # # # # # # #
      # CHEATERS: Type correct_num below for the answer #
      # press ctrl+D to re-enter game                   #
      # # # # # # # # # # # # # # # # # # # # # # # # # #

      binding.pry
      print "Guess the number: "
      guess = gets.chomp
    end
  end

  counter += 1
  break if guess == correct_num
  print "Nope! Guess again: "
end

# slowly types the word WINNER before telling how many guesses it took.
print "\nW "
sleep 0.4 ; print "I "
sleep 0.4 ; print "N "
sleep 0.4 ; print "N "
sleep 0.4 ; print "E "
sleep 0.4 ; print "R "
sleep 0.4 ; print "! "
sleep 0.05 ; print "! "
sleep 0.05 ; puts "! "
print "\nCongratulations! You got the correct number in #{counter} "
puts counter.to_i == 1 ? "guess!" : "guesses!"
puts "\n~ Thank you for playing NumberGuess® ~\n\n"
