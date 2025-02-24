require './first_duplicate.rb'

RSpec.describe FirstDuplicate, type: :class do
  describe 'find first duplicate' do
    
      it 'returns the first duplicate number' do
        input = [2, 1, 3, 5, 3, 2]
        expect(FirstDuplicate.call(array: input)).to eq(3)
      end

      it 'returns the first number that appears twice' do
        input = [4, 5, 6, 5, 4]
        expect(FirstDuplicate.call(array: input)).to eq(5)
      end

      it 'returns the first number when duplicate appears immediately' do
        input = [7, 7, 8, 9, 10]
        expect(FirstDuplicate.call(array: input)).to eq(7)
      end

      it 'returns -1 when no duplicates found' do
        input = [1, 2, 3, 4, 5]
        expect(FirstDuplicate.call(array: input)).to eq(-1)
      end

      it 'handles empty array' do
        input = []
        expect(FirstDuplicate.call(array: input)).to eq(-1)
      end

      it 'handles array with single element' do
        input = [1]
        expect(FirstDuplicate.call(array: input)).to eq(-1)
      end

      it 'handles array with all identical elements' do
        input = [2, 2, 2, 2, 2]
        expect(FirstDuplicate.call(array: input)).to eq(2)
      end

      it 'duplicate at the end' do
        input = [10, 20, 30, 40, 10]
        expect(FirstDuplicate.call(array: input)).to eq(10)
      end

      it 'negative number with duplicate' do
        input = [-1, -2, -3, -1, -4]
        expect(FirstDuplicate.call(array: input)).to eq(-1)
      end

      it 'mixed positive and negative number' do
        input = [1, -1, 2, -2, 1]
        expect(FirstDuplicate.call(array: input)).to eq(1)
      end

      it 'first duplicate in the middle' do
        input = [10, 20, 30, 40, 30, 20]
        expect(FirstDuplicate.call(array: input)).to eq(30)   
      end
  end
end
