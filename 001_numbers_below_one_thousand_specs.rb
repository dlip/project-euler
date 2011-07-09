#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.
#Answer: 233168 

require './001_numbers_below_one_thousand'


describe Processor do
  describe "#sum" do
    it "returns the correct result" do
      processor = Processor.new
      processor.sum.should == 233168
    end
  end
end

