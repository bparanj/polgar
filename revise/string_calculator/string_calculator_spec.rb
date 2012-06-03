require './string_calculator'

describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  it "should output 0 when provided and empty string" do
    calculator.add("").should eq(0)
  end

  it "should output 1 when provided 1" do
    calculator.add("1").should eq(1)
  end
 
  it "should output 3 when provided 1,2" do
    calculator.add("1,2").should eq(3)
  end  

  it "should output 3 when provided 1\n2" do
    calculator.add("1
    2").should eq(3)
  end

  it "should output 6 when provided 1\n2,3" do
    calculator.add("1
    2,3").should eq(6)
  end      

  it "should output 7 when provided 1,6\n," do
    calculator.add("1
    ,6").should eq(7)
  end

  it "should support non-standard delimiters" do
    calculator.add("//;\n1;2").should eq(3)
  end

  it "should throw an error if provided negative numbers" do
    expect { calculator.add("-1,2") }.to raise_error(/negatives not allowed/)
  end

  it "should throw an error if provided negative numbers and print the negative numbers" do
    expect { calculator.add("-1,-2,-3") }.to raise_error(/negatives not allowed \["-1", "-2", "-3"\]/)
  end

  it "should ignore numbers larger than 1000" do
    calculator.add("1,2,1000").should eq(3)
  end

  it "should support non-standard delimiters of any length with brackets" do
    calculator.add("//[***]\n1***2***3").should eq(6)
  end

  it "should support multiple delimiters" do
    calculator.add("//[*][%]\n1*2%3").should eq(6)
  end

  it "should support multiple delimiters or multiple lengths" do
    calculator.add("//[*][%%]\n1*2%%3").should eq(6)
  end  

end