class Calculator
  def calculate(input)
    input.to_i
  end
end

describe Calculator do
  let(:calculator) {  Calculator.new }

  it "returns 0 for an empty string" do
    result = calculator.calculate("")
    
    result.should == 0
  end
  
  it "returns 1 for a string containing 1" do
    result = calculator.calculate("1")
    
    result.should == 1    
  end
  
end