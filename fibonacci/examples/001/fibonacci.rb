# def fibonacci(n)
#   if n == 1 || n == 2
#     1
#   else
#     fibonacci(n - 1) + fibonacci(n - 2)
#   end
# end
#
# puts fibonacci(1000)



module Fibonacci
  @fib=[0,1,1]
  def self.fib_array(n)
    @fib[n] ||= fib_array(n-2) + fib_array(n-1)
  end
end

puts Fibonacci.fib_array(1000)
