class FizzBuzz
  attr_accessor :fizzbuzz_array

    def initialize
      @fizzbuzz_array = []
    end

    def divisible_by?(num1, div_by_num)
      (num1 % div_by_num).zero?

    end

    def fizzbuzz_iterator(range_from, range_to)
      (range_from..range_to).each do |i|
        if divisible_by?(i,3) && divisible_by?(i,5)
          @fizzbuzz_array << 'FizzBuzz'
          #pushes values into array
        elsif divisible_by?(i,3)
          @fizzbuzz_array << 'Fizz'
        elsif divisible_by?(i,5)
          @fizzbuzz_array << 'Buzz'

        else
          @fizzbuzz_array << i
        end
      end
    end
end

class Multiples
#multiples of 3 and 5

  attr_accessor :multiples_array

      def initialize
        @multiples_array = []
      end

      def divided_by(num1, div_by_num)
          (num1 % div_by_num).zero?

      end

      def multiples_iterator(range_from, range_to)
          (range_from...range_to).each do |i|
            if divided_by(i,3) || divided_by(i,5)
              @multiples_array << i
            end

      end


      def sum_of_array
        sum = 0

        (0...@multiples_array.length).each do |i|
           sum += @multiples_array[i]

        end
        sum
      end
  end
end
