#INCOMPLETE
#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?


require './003_largest_prime_factor'


describe Processor do
  before(:all) do 
    @processor = Processor.new
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

  describe "#generate_prime_numbers" do
    #prime numbers are greater than one and can only divide by one and itself
    it "returns a correct sequence" do
      expected = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
      result = @processor.generate_prime_numbers(100)
      (0...4).each do |i|
        result[i].should == expected[i]
      end
    end
  end

end
