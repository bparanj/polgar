

describe "Don't mock yourself out" do
  it "should illustrate tautology" do
    paul = stub(:paul, :age => 20)
    
    paul.age.should == 20
  end
end