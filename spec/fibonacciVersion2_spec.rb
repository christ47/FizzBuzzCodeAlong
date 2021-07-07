describe 'project euler problem two walk-through' do

    before(:each) do

      @Fib_V2 = FibonacciVersion2.new
    end

    after(:all) do
      puts 'Fibonacci Version 2 Test Complete'
    end

    it 'should contain array of [1,2,3]' do
      expect(@Fib_V2.fib_array).to match([1,2,3])

    end

    it "should respond correct total of the first ten terms in the fibonacci sequence" do
      @Fib_V2.fib_creator(10)
      expect(@Fib_V2.fib_sum).to eq 19

    end

    it "should respond the correct total of all the even numbers in the first 10 fibonacci numbers" do
      @Fib_V2.fib_creator(10)
      expect(@Fib_V2.even_number_total).to eq 10
    end
end
