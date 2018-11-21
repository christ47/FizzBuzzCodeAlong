describe 'FizzBuzz' do

  before(:all) do
    @fb = FizzBuzz.new

  end

  after(:all) do
    puts 'End of FizzBuzz Test'
  end
    it "should respond true if the number is divisible by three" do
      expect(@fb.divisible_by?(3, 3)).to be true
    end

    it "should respond false if the number is not divisible by three" do
      expect(@fb.divisible_by?(5, 3)).to be false
    end

    it "should respond true if the number is divisible by 5" do
        expect(@fb.divisible_by?(5, 5)).to be true
    end

    it "should respond false if the number is not divisible by 5" do
        expect(@fb.divisible_by?(9, 5)).to be false
    end

    it "should correctly apply fizzbuzz to given range" do
      @fb.fizzbuzz_iterator(1,15)
      expect(@fb.fizzbuzz_array[0]).to eq 1
      expect(@fb.fizzbuzz_array[-1]).to eq 'FizzBuzz'
      expect(@fb.fizzbuzz_array[2]).to eq 'Fizz'
      expect(@fb.fizzbuzz_array[4]).to eq 'Buzz'
      expect(@fb.fizzbuzz_array.length).to eq 15

    end
end
describe 'Multiples' do

  before(:all) do

    @projectE = Multiples.new
  end

  it "should respond true to divisible by 3" do
    expect(@projectE.divided_by(9,3)).to be true
  end

  it "should respond true to divisible by 5" do
    expect(@projectE.divided_by(10,5)).to be true
  end

  it "should collect all multiples of 3 and 5 below 10" do @projectE.multiples_iterator(1,1000)
    expect(@projectE.multiples_array[0]).to eq 3
  end

  it "should add together all numbers within the array" do 
    expect(@projectE.sum_of_array).to eq 233168
  end
end
