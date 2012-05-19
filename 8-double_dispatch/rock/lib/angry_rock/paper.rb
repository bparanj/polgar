class Paper
  def beats(item)
    !item.beatsPaper
  end
  
  def beatsRock
    true
  end
  
  def beatsPaper
    false
  end
  
  def beatsScissor
    false
  end
  
end