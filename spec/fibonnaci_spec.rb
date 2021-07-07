describe 'FibonacciNums' do

  before(:all) do
    @fib = FibonacciNums.new
  end

  after(:all) do

    puts 'End of Test'
  end

  it "should generate fibonacci numbers below 4 million" do
   @fib.fibonacci(4000000)
   expect(@fib.array.length).to eq 12
   expect(@fib.array[1]).to eq 2
  end

  it "should calculate the even numbers in the fibonacci sequence" do
    expect(@fib.sum_of_array).to eq 4613732
  end
end
