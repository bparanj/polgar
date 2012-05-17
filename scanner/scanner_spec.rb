require_relative 'scanner'

describe Scanner do
  
  it 'should respond to scan with barcode as the input argument' do
    scanner = Scanner.new
    
    scanner.should respond_to(:scan).with(1)
  end
end