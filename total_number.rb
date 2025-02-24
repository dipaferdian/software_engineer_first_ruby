require 'awesome_print'

class TotalNumber
  def self.call(array:, target:)
    total = 0
    array.each do |item|
      if item == target
        total += 1
      end
    end

    total
  end
end

