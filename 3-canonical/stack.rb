class Stack
  
  def initialize
    @elements = []
  end
  
  def push(item)
    @elements << item
  end
  
  def pop
    @elements.pop  
  end
  
  def size
    @elements.size
  end
end