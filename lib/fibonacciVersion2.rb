class FibonacciVersion2

  attr_accessor :fib_array, :even_numbers_array

  def initialize
    @fib_array = [1,2,3]
    @even_numbers_array = []
  end

  #Create the fibonacci sequence
    #create valid array (within range) inside @fib_array
  def fib_creator(max_value)
    fib_array << (fib_array[-1] + fib_array[-2]) while fib_array[-1] < max_value
    fib_array.pop
    end

    #find some of array
  def fib_sum
    fib_array.sum
  end

  #generate sum of the even numbers within @fib_array
  def even_number_total
    fib_array.each do |i|
      even_numbers_array << i if (i%2).zero?
    end
    even_numbers_array.sum
  end


end
