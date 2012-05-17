require_relative 'stack'

describe Stack do

  it "should push a given item" do
    stack = Stack.new
    stack.push(1)

    stack.size.should == 1
  end

  it "should pop from the stack" do
    stack = Stack.new
    stack.push(2)
    result = stack.pop
    
    result.should == 2
    stack.size.should == 0
  end
end