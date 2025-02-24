require './reverse_from_low_to_high.rb'

RSpec.describe ReverseFromLowToHigh, type: :class do
  describe 'reverse from low to high' do
    it 'normal case' do
      input = [1, 2, 3, 4, 5]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(5, 4, 3, 2, 1)
    end
  
    it 'single element' do
      input = [10]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(10)
    end
  
    it 'all negative' do
      input = [-1, -2, -3, -4]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(-4, -3, -2, -1)
    end
  
    it 'mixed positive and negative' do
      input = [10, -5, 0, 3, -7]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(-7, 3, 0, -5, 10)
    end
  
    it 'with duplicates' do
      input = [1, 2, 3, 2, 1]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(1, 2, 3, 2, 1)
    end
  
    it 'all element same' do
      input = [4, 4, 4, 4]
      expect(ReverseFromLowToHigh.call(array: input)).to contain_exactly(4, 4, 4, 4)
    end
  
    it 'empty' do
      input = []
      expect(ReverseFromLowToHigh.call(array: input)).to eq([])
    end
  end
end