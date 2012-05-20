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
      ""
    end
  end
  
end

describe Week do
  
  it "should return monday as the first day of the week" do
    day = Week.day("1")
    
    day.should == :monday
  end
  
  it "should return false for numbers that does not correspond to week day" do
    day = Week.day("7")
    
    day.should be_false
  end
end