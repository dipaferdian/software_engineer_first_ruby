require 'awesome_print'

def is_sort?(array:)

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

ap is_sort?(array: [1,3,3,5])