require_relative 'stack'
require_relative 'given_when_then'

describe Stack do

  it "should push a given item" do
    Given { @stack = Stack.new }

    When  { @stack.push(1) }

    Then  { @stack.size.should == 1 }
  end

  it "should pop from the stack" do
    stack = Stack.new
    stack.push(2)
    result = stack.pop
    result.should == 2
    stack.size.should == 0
  end
  
end