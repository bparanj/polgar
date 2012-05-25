require_relative 'calculator'

describe Calculator, "Computes addition of given two numbers" do
  
  it "should add given two numbers that are not trivial" do
    calculator = Calculator.new
    result = calculator.add(1,2)
    
    result.should == 3
  end
end