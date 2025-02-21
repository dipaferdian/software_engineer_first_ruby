require 'awesome_print'

def four_sum(array)
  hash_grouping = {}
  hash = {}
  dup_number = []
  new_number = []

  array.each_with_index do |value|

    if hash[value]
      hash_grouping[value] = hash_grouping[value] << value

      dup_number << hash[value] << value
      # hash.delete(value)
    else
      hash[value] = value

      hash_grouping[value] = [] << value
    end
  end

  hash.each { |key, value| new_number << value}

  {
    dup_number: dup_number,
    new_number: new_number,
    hash: hash_grouping
  }
end

ap four_sum([1,0,-1,0,-2,2], 0)