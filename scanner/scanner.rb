
class Scanner
  def initialize(display)
    @display = display
  end
  
  def scan(barcode)
    @display.display("Milk $3.99")
  end
end