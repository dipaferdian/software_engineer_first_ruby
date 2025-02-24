  require 'awesome_print'
  
  class MaxSumHourGlass
    def self.call(array:)
      max_sum = 0
      
      (0..3).each do |row|
        (0..3).each do |col|

          current_sum = array[row][col] + array[row][col + 1] + array[row][col + 2]

          current_sum += array[row + 1][col + 1]

          current_sum += array[row + 2][col] + array[row + 2][col + 1] + array[row + 2][col + 2]
          
          max_sum = [max_sum, current_sum].max
        end
      end
      
      max_sum
    end
  end
