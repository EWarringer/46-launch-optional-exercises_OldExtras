# YOUR CODE HERE
def factorial(n)
  counter = n
  number = n
  while n > 1
    # binding.pry
    number = number * (counter - 1)
    counter = counter - 1
  end
  counter
end
