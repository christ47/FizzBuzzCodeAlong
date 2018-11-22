  require_relative '../lib/fizz_buzz'
  require_relative '../lib/fibonacci'
  require_relative '../lib/FibonacciVersion2'

  RSpec.configure do |config|
    config.formatter = :documentation
  end
