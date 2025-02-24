require './find_maximum_number.rb'

RSpec.describe FindMaximumNumber, type: :class do
  describe 'find maximum number' do
     
    it 'normal case' do
      input = [1, 2, 3, 4, 5]
      expect(FindMaximumNumber.call(array: input)).to eq(5)
    end

    it 'single element' do
      input = [10]
      expect(FindMaximumNumber.call(array: input)).to eq(10)
    end

    it 'all negative number' do
      input = [-1, -2, -3, -4, -5]
      expect(FindMaximumNumber.call(array: input)).to eq(-1)
    end

    it 'mixed positive and negative number' do
      input = [-10, 0, 5, 20, -30]
      expect(FindMaximumNumber.call(array: input)).to eq(20)
    end

    it 'large number' do
      input = [1000000, 500000, 999999]
      expect(FindMaximumNumber.call(array: input)).to eq(1000000)
    end

    it 'duplicate maximum' do
      input = [5, 1, 5, 3, 5]
      expect(FindMaximumNumber.call(array: input)).to eq(5)
    end

    it 'no number' do
      input = []
      expect(FindMaximumNumber.call(array: input)).to eq(0)
    end
  end
end
