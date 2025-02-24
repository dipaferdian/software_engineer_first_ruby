
require 'awesome_print'

class Matching
  def self.call(array:)    

    result = 0
    return result if array.size == 0

    grouping(array).each do |key, value|
       if value.size > 1
        result += (value.size / 2)
       end
    end

    result
  end

  def self.grouping(input)
    group = {}
  
    input.each do |item|
        
      if group[item]
        group[item] = group[item] << item
      else
        group[item] = [] << item
      end
    end
  
    group
  end
end
