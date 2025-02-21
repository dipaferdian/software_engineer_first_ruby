require 'awesome_print'
require './array_first_duplicate.rb'

  def test
    test_cases = [ 
      {
        input: [1, 2, 3, 3, 2],
        output: 3
      },
      {
        input: [4, 5, 6, 5, 4],
        output: 5
      }
    ]
  
    test_cases.each do |item|
      
      your_code = first_duplicate(array: item[:input])

      puts "Your output:".upcase
      ap your_code
      puts "\n"
      puts "Expected:".upcase
      ap item[:output]

      if true
          puts "\n"
          puts "\e[32mPassed\e[0m"
          puts "---------------------"
      else
          puts "\n"
          puts "\e[31mFailed\e[0m"
          puts "---------------------"
      end
    end
  end

  test