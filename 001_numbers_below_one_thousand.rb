class Processor

  def sum
    result = 0
    (1...1000).each do |i|
      result += i if i % 5 == 0 or i % 3 == 0
    end

    return result
  end

end
