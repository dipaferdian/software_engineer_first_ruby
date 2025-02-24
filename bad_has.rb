require 'awesome_print'

# use single hash in bucket will be slowest O(n)
class BadHash
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def hash
    1 # BAD: Forces all keys into the same bucket
  end

  def eql?(other)
    @value == other.value
  end
end

# Create a Hash with custom keys
hash_map = {}
key1 = BadHash.new("A")
key2 = BadHash.new("B")
key3 = BadHash.new("C")

hash_map[key1] = "Value 1"
hash_map[key2] = "Value 2"
hash_map[key3] = "Value 3"

# Simulate and print buckets
buckets = Hash.new { |h, k| h[k] = [] }

hash_map.each_key do |key|
  bucket_id = key.hash
  buckets[bucket_id] << key.value
end

ap buckets
puts "Buckets:"
buckets.each do |hash_value, keys|
  puts "Bucket #{hash_value}: #{keys.inspect}"
end
