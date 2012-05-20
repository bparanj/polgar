class Week
  DAYS = { "1" =>  :monday, 
           "2" =>  :tuesday, 
           "3" =>  :wednesday, 
           "4" =>  :thursday, 
           "5" =>  :friday,
           "6" =>  :saturday,
           "7" =>  :sunday}
  
  def self.day(n)
    if n.to_i < 6
      DAYS[n] 
    else
      nil
    end
  end
  
  def self.end(n)
    if n.to_i < 5
      raise "The given number is not a weekend"
    else
      fetch(n)
    end
  end
end

describe Week do
  
  it "should return monday as the first day of the week" do
    day = Week.day("1")
    
    day.should == :monday
  end
  # contract test
  it "should return false for numbers that does not correspond to week day" do
    day = Week.day("7")
    
    day.should be_false
  end
  # contract test  
  it "should throw exception for numbers that does not correspond to week end" do
    expect do
      week_end = Week.end("4")
    end.to raise_error
  end
  # contract test
  it "should throw exception for numbers that is out of range" do
    expect do
      week_end = Week.end("40")
    end.to raise_error    
  end
end