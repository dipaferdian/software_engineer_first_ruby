require 'awesome_print'

class IsSort 
  def self.call(array:)

    return true if array.size == 0
  
    is_sorted = true
    array.each_with_index do |item, index|
  
      if array[index + 1]
        if item > array[index + 1]
          is_sorted = false
        end
      end
    end
  
    is_sorted
  end
end