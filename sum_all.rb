require 'awesome_print'

class SumAll
  def self.call(array:)
    return 0 if array.size == 0
  
    total = 0
    array.each do |item|
        total += item
    end
  
    total
  end
end

