class StandardConsole
  
  def output(message)
    puts message
  end
    
  def prompt(message)
    output(message)
    puts ">"
  end
  
end