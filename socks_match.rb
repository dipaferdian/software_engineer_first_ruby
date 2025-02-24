
require 'awesome_print'

def socks_match(n, ar)    
    result = 0
    return result if ar.size == 0

    sort_color(ar).each do |key, value|
       if value.size > 1
        result += (value.size / 2)
       end
    end

    result
end


def sort_color(input)
  pair_socks   = {}

  input.each do |color|
      
    if pair_socks[color]
        pair_socks[color] = pair_socks[color] << color
    else
      pair_socks[color] = [] << color
    end
  end

  pair_socks
end

ap socks_match(2, [1,1])

