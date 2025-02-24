require 'awesome_print'

def total_number(array:, target:)

    total = 0
    array.each do |item|
      if item == target
        total += 1
      end
    end

    total
end

ap total_number(array: [1,1,3,4,1], target: 1)