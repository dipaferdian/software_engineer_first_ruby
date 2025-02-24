require 'awesome_print'

class FirstDuplicate

  def self.call(array:)

    return -1 if array.size == 0 || array.size == 1
  
    lowest_index = 0
    result = -1
    grouping(array).each do |key, value|
      if value[:value].size > 1
        lowest_index = value[:index]
        result = key
      end
  
      if value[:value].size > 1
        if value[:index] < lowest_index
           lowest_index = value[:index]
           result = key
        end
      end
    end
  
    result
  end
  
  def self.grouping(input)
    group   = {}
    input.each_with_index do |item, index|
      if group[item]
        group[item][:value] = group[item][:value] << item
        group[item][:index] = index
      else
        group[item] = {
          value: [] << item,
          index: index
        }
      end
      end
    group
  end
end
