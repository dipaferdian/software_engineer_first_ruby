require 'awesome_print'

def reverse_from_low_to_high(array:)
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

ap revers(array: [1,2,3])