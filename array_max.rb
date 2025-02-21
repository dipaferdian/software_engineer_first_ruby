require 'awesome_print'

def max(array:)

 max_number = 0
 array.each_with_index do |item, i|

   if item > max_number
     max_number = item
   end
 end

 max_number
end

ap max(array: [1,2,3,4])