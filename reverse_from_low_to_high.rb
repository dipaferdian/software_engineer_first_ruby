require 'awesome_print'

class ReverseFromLowToHigh 
  def self.call(array:)
    array_size = array.size
    return [] if array_size == 0
  
    right = array_size - 1
    left  = 0
  
    while right > left do
  
      if array[right]
        temp = array[left]
  
        array[left] = array[right]
        array[right] = temp
      end
  
      right -= 1
      left  += 1
    end
  
    array
  end
end