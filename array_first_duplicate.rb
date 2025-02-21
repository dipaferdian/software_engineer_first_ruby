require 'awesome_print'


def first_duplicate(array:)
   
  return -1 if array.size == 0

  current_duplicate = array[0]
  array.each_with_index do |item, i|

    if array[i + 1]
      if current_duplicate != array[i + 1]
        current_duplicate = array[i + 1]
      end
    end
  end

  current_duplicate
end