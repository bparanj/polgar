require_relative 'scanner'
require_relative 'fake_display'

describe Scanner do
    
  it "should scan and display the name and price of the scanned item on a cash register display" do
    fake_display = mock
    fake_display.should_receive(:display).with("Milk $3.99")
    scanner = Scanner.new(fake_display)
    scanner.scan("1")
  end
end