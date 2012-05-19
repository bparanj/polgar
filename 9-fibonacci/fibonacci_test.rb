require 'test/unit'

class Fibonacci
  def self.of(number)
    0
  end
end

# Version 2
# Discovery of public API
class FibonacciTest < Test::Unit::TestCase
  def test_fibonacci_of_zero_is_zero
    fib_of_zero = Fibonacci.of(0)
    assert_equal(fib_of_zero, 0)
  end
end
