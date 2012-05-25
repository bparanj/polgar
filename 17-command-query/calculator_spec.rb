require_relative 'calculator'

describe Calculator, "Computes addition of given two numbers" do
  
  it "should add given two numbers that are not trivial" do
    calculator = Calculator.new
    calculator.add(1,2) # Command
    result = calculator.result # Query
    
    result.should == 3
  end
end