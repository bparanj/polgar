class Calculator

  def calculate(input)
    initialize_delimiter_and_input(input)  
    normalize_delimiter
    if @string.include?(',')
      numbers = convert_string_to_integers
      calculate_sum(numbers)
    else
      @string.to_i
    end
  end
  
  private
  
  def initialize_delimiter_and_input(input)
    if input.start_with?('//')
      @delimiter = input[2]
      @string = input[4, input.length - 1]
    else
      @delimiter = "\n"
      @string = input
    end
  end

  def convert_string_to_integers
    strings = @string.split(',')
    strings.map{|x| x.to_i}
  end
  
  def calculate_sum(numbers)
    numbers.inject{|sum, n| sum + n}
  end
  
  def normalize_delimiter
    @string.gsub!(@delimiter, ',')
  end
end