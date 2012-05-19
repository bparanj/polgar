class Scissor
  def beats(item)
    !item.beatsScissor
  end
  
  def beatsRock
    false
  end
  
  def beatsPaper
    true
  end
  
  def beatsScissor
    false
  end
end