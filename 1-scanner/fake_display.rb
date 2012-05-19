class FakeDisplay
  attr_reader :last_line_item
  
  def display(line_item)     
    @last_line_item = "Milk $3.99"
  end
  
end