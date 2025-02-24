require './total_number.rb'

RSpec.describe TotalNumber, type: :class do
  describe 'total number' do
    
    it 'normal case' do
      input = {
        array: [1, 2, 2, 3, 4, 2],
        target: 2
      }
      expect(TotalNumber.call(array: input[:array], target: input[:target])).to eq(3)
    end

    it 'element appears at once' do
      input = {
        array: [5, 6, 7, 8, 9],
        target: 7
      }
      expect(TotalNumber.call(array: input[:array], target: input[:target])).to eq(1)
    end

    it "element doesn't exist in array" do
      input = {
        array: [5, 6, 7, 8, 9],
        target: 0
      }
      expect(TotalNumber.call(array: input[:array], target: input[:target])).to eq(0)
    end

    it 'all alement are the same' do
      input = {
        array: [3, 3, 3, 3, 3],
        target: 3
      }
      expect(TotalNumber.call(array: input[:array], target: input[:target])).to eq(5)
    end

    it 'empty' do
      input = {
        array: [],
        target: 5
      }
      expect(TotalNumber.call(array: input[:array], target: input[:target])).to eq(0)
    end
  end
end
