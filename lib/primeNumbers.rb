class PrimeNumbers

#create a generator that can find the multiples of a number and store in array
    attr_accessor :primes_array, :factors_array
    def initialize
      @primes_array = []
      @factors_array = []
    end

      def is_prime(num)
        (2...num).each do |divisor|
        factors_array << divisor if num % divisor == 0
        end

        factors_array
      end

      def primes
        factors_array.each do |i|
          primes_array << i if i.is_prime?
        end

        primes_array
end
#determine if number in the array is prime

#push numbers which are prime in  new array

#select biggest number in array
end
test = PrimeNumbers.new
puts test.is_prime(30)
puts test.primes
