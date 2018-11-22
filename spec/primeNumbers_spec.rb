describe 'PrimeNumbers' do


  before(:all) do
    @prime_nums = PrimeNumbers.new
  end

  it "should generate all the factors of a number in an array" do
    @prime_nums.is_prime(30)
    expect(@prime_nums.factors_array).to match ([2,3,5,6,10,15])
  end


end
