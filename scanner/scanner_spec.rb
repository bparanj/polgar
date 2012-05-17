require_relative 'scanner'
require_relative 'r2d2_display'

describe Scanner do
    
  it "should scan and display the name and price of the scanned item on a cash register display" do
    real_display = R2d2Display.new
    scanner = Scanner.new(real_display)
    scanner.scan("1")
    
    real_display.last_line_item.should == "Milk $3.99"
  end
end