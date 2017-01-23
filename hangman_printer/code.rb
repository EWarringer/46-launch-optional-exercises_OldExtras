
# Hangman game that lets you play with full sentences!

def print_puzzle(word, guesses = nil)

  hash = {
    "'" => "'",
    "," => ",",
    " " => "  ",
    "." => ".",
    "!" => "!",
    "-" => "- "}
  characters = word.chars

# Fill in apostrophies, commas, and spaces, as well as guessed letters
# Turn everything else into an underscore with a space after it.
  characters.each do |type|

    count = 0
    if !(guesses.nil?)
      i = guesses.map {|x| x.downcase}
      if i.include? type.downcase
        print type + " "
        count +=1
      end
    end

    if hash.include? type
      print hash[type] + " "
    elsif count == 0
      print "_ "
    end

  end
end

print_puzzle("chapie's Friends!", ["D", "R", "i", "e", "c", "h"])
