class Processor

  def sum
    result = 0
    (1...1000).each do |i|
      result += i if multiple_of_3_or_5? i
    end

    result
  end

  def multiple_of_3_or_5?(number)
    return false if number == 0

    number % 3 == 0 or number % 5 == 0
  end

end
