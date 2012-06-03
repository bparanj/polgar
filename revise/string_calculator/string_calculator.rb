class StringCalculator
  def add(input)
    numbers = input.gsub(/^\/\/(.*)\n/, "").split(delimiter(input))
    negatives = numbers.reject{ |str| str.match(/^-(.*)/).nil? }
    raise ArgumentError, "negatives not allowed #{negatives.inspect}" unless negatives.empty?
    numbers = numbers.map(&:to_i).select{ |n| n < 1000 }
    numbers.reduce(0, &:+)
  end

  def delimiter(input)
    extracted_delimiter = (input.match(/^\/\/(.*)\n/) || [])[1]
    unless extracted_delimiter.nil? 
      match = extracted_delimiter.match(/^\[(.*)\]$/)
      extracted_delimiter = match[1] unless match.nil?
      unless match.nil?
        extracted_delimiter = Regexp.new(match[1].split("][").map{ |s| Regexp.escape(s) }.join("|"))
      end
    end
    extracted_delimiter || /,|\n/
  end
end
