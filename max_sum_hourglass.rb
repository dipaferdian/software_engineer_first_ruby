  require 'awesome_print'
  
  # find hourglasses in 2d array 3x3
  def max_sum_hourglass(glasses:)
    max_sum = -Float::INFINITY
    
    (0..3).each do |row|
      (0..3).each do |col|
        # Top row
        current_sum = glasses[row][col] + glasses[row][col + 1] + glasses[row][col + 2]
        # Middle (hourglass center)
        current_sum += glasses[row + 1][col + 1]
        # Bottom row
        current_sum += glasses[row + 2][col] + glasses[row + 2][col + 1] + glasses[row + 2][col + 2]
        
        max_sum = [max_sum, current_sum].max
      end
    end
    
    max_sum
  end

  input = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 2, 4, 4, 0],
    [0, 0, 0, 2, 0, 0],
    [0, 0, 1, 2, 4, 0],
  ]

ap max_sum_hourglass(glasses: input)