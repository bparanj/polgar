class R2d2Display
  attr_reader :last_line_item
  
  def display(line_item)
    p "Executing complicated logic to display the line item to a real cash register display"
    sleep 5
     
    @last_line_item = "Milk $3.99"
  end
end