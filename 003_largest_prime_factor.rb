class Processor

  def largest_prime_factor(number)
    generate_prime_factors(number).last
  end

  def generate_prime_factors(number)
    sequence = Array.new

    #using sieve of eratosthenes
    current = 2

    while current < number

      if number % current == 0
        number=number/current
        sequence.push(current)
      else
        current += 1
      end
    end

    if number % current == 0
      sequence.push(number)
    end

    sequence
  end

end


processor = Processor.new

#p processor.generate_prime_factors(600851475143)
