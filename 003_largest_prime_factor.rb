class Processor

  def largest_prime_factor(number)
    generate_prime_factors(number).last
  end

  def generate_prime_factors(number)
    sequence = generate_prime_numbers(number)

    result = Array.new

    sequence.each do |i|
      result.push i if number % i == 0
    end

    result
  end

  def generate_prime_numbers(max)
    sequence = Array.new

    #should only need to check up to half way to number
    (2...max/2).each do |number|

      prime = true
      (2...number).each do |i|
        if number % i == 0
          prime = false
          break
        end
      end

      sequence.push number if prime
      p number if prime

    end
    sequence
  end

end


processor = Processor.new

p processor.largest_prime_factor(600851475143)
