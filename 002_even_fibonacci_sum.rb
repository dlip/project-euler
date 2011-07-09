class Processor

  def sum(sequence)
    result = 0
    sequence.each do |i|
      result += i if i % 2 == 0
    end

    result
  end

  def generate_sequence(sequence, max)
    return nil if sequence.length < 2
    
    number = sequence.last + sequence.at(-2)
    return sequence if number > max

    sequence.push(number)
    generate_sequence(sequence, max)

  end
end
