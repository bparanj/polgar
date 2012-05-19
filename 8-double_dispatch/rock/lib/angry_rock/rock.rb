class Rock
  def beats(item)
    !item.beatsRock
  end
  
  def beatsRock
    false
  end
  
  def beatsPaper
    false
  end
  
  def beatsScissor
    true
  end
end