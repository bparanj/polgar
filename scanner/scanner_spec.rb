require_relative 'scanner'

describe Scanner do
  
  it 'should respond to scan with barcode as the input parameter' do
    scanner = Scanner.new
    
    scanner.should respond_to(:scan)
  end
end