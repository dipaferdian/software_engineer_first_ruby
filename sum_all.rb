require 'awesome_print'

# sum all array of number
def sum_all(array:)
  return 0 if array.size == 0

  total = 0
  array.each do |item|
      total += item
  end

  total
end


ap sum_all(array: [1,2])