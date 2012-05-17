require_relative 'scanner'
require_relative 'fake_display'

describe Scanner do
    
  it "should scan and display the name and price of the scanned item on a cash register display" do
    fake_display = FakeDisplay.new
    scanner = Scanner.new(fake_display)
    scanner.scan("1")
    
    fake_display.last_line_item.should == "Milk $3.99"
  end
end