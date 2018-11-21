# class FibonacciNums
# attr_accessor :fibonacci_array
#
#     def initialize
#       @fibonacci_array = [0,1]
#     end
#
#     def fibonacci(range_from, range_to)
#       (range_from...range_to).each do |n|
#       return  n  if ( 0..1 ).include? n
#       ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
#         if (n % 2== 0)
#           @fibonacci_array << n
#         end
#     end
#     fibonacci(0,10)
#     puts @fibonacci_array
# end
# end
# def fibonacci( n )
#   return  n  if ( 0..1 ).include? n
#   ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
# end
# puts fibonacci( 10 )


#sum all these numbers together
#generates fibonacci numbers
# check number is even.
#store even number in array
#sum array
class FibonacciNums
  attr_accessor :array

    def initialize
    @array = [0,1]
    @evenarray =[]
    end

    def fibonacci(max)
      i = 2
      result = 0
      while result < max
          result = @array[i-1] + @array[i-2]
          # result += array[i]
          @array << result
          i += 1

      end
      @array.pop
      @array.delete_if &:odd?


  end
  def sum_of_array
    sum = 0

    (0...@array.length).each do |i|
       sum += @array[i]

    end
    sum
end
end
jollof = FibonacciNums.new
print jollof.fibonacci(4000000)
