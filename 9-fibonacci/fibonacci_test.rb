require 'test/unit'

# version 3
# Found the right assertion to use. Overcame the temptation to change the test code
# and code under test at the same time. Thereby test driving the development of the 
# production code. Got the test to pass quickly  
# by using a fake implementation. The implementation returns a constant
 
class Fibonacci
  def self.of(number)
    0
  end
end

class FibonacciTest < Test::Unit::TestCase
  def test_fibonacci_of_zero_is_zero
    fib_of_zero = Fibonacci.of(0)
    assert_equal(0, fib_of_zero)
  end
end
