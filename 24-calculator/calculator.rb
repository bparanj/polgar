class Calculator

  def calculate(input)
    normalize_delimiter(input)
    if input.include?(',')
      numbers = convert_string_to_integers(input)
      calculate_sum(numbers)
    else
      input.to_i
    end
  end
  
  private
  
  def convert_string_to_integers(input)
    strings = input.split(',')
    strings.map{|x| x.to_i}
  end
  
  def calculate_sum(numbers)
    numbers.inject{|sum, n| sum + n}
  end
  
  def normalize_delimiter(input)
    input.gsub!("\n", ',')
  end
end
