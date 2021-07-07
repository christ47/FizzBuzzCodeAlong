#sum all these numbers together
#generates fibonacci numbers
# check number is even.
#store even number in array
#sum array
class FibonacciNums
  attr_accessor :array

    def initialize
    @array = [0,1]
    end

    def fibonacci(max)
      i = 2
      result = 0
      while result < max
          result = @array[i-1] + @array[i-2]
          @array << result
          i += 1
      end
      @array.pop
      @array.delete_if &:odd?
  end

  def sum_of_array
    @array.sum
    end
  end

fibnum = FibonacciNums.new
print fibnum.fibonacci(4000000)
