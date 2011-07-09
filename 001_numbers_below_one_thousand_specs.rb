#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.
#Answer: 233168 

require './001_numbers_below_one_thousand'


describe Processor do
  before(:all) do 
    @processor = Processor.new
  end

  describe "#sum" do
    it "returns the correct answer" do
      @processor.sum.should == 233168
    end
  end

  describe "#multiple_of_3_or_5?" do
    it "returns false if given 0" do
      @processor.multiple_of_3_or_5?(0).should == false
    end

    it "returns true if given 3" do
      @processor.multiple_of_3_or_5?(3).should == true
    end

    it "returns true if given 5" do
      @processor.multiple_of_3_or_5?(5).should == true
    end
  end

end

