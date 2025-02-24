require 'awesome_print'

# find maximum number
def find_maximum_number(array:)

 max_number = 0
 array.each_with_index do |item, i|

   if item > max_number
     max_number = item
   end
 end

 max_number
end

ap find_maximum_number(array: [1,2,3,4])