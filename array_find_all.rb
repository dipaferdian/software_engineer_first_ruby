require 'awesome_print'

def find_all(array:, target:)

    total = 0
    array.each do |item|
      if item == target
        total += 1
      end
    end

    total
end

ap array_find_all(array: [1,1,3,4,1], target: 1)