require 'awesome_print'

class FindMaximumNumber 
  def self.call(array:)

    return 0 if array.size == 0
    
    max_number = 0
    array.each_with_index do |item, i|
   
      if i == 0
        max_number = item 
      end

      if item > max_number
        max_number = item
      end
    end
   
    max_number
  end
end
