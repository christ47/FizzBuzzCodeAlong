  require_relative '../lib/fizz_buzz'
  require_relative '../lib/fibonacci'
  require_relative '../lib/FibonacciVersion2'
  require_relative '../lib/PrimeNumbers'

  RSpec.configure do |config|
    config.formatter = :documentation
  end
