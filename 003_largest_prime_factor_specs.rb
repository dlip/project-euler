#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

#Answer 6857

require './003_largest_prime_factor'


describe Processor do
  before(:all) do 
    @processor = Processor.new
  end

  describe "#largest_prime_factor" do
    it "calculates the answer" do
      @processor.largest_prime_factor(600851475143).should == 6857
    end
  end

  describe "#generate_prime_factors" do
    #prime factors of an integer are the prime numbers that divide into said number without leaving a remainder
    it "returns a correct sequence" do
      expected = [5,7,13,29]
      result = @processor.generate_prime_factors(13195)
      result.length.should == 4
      (0...4).each do |i|
        result[i].should == expected[i]
      end
    end
  end

end
