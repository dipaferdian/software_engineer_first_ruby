require './first_duplicate.rb'

RSpec.describe FirstDuplicate, type: :class do
  describe '#find_first_duplicate' do
    
      it 'returns the first duplicate number' do
        array = [2, 1, 3, 5, 3, 2]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(3)
      end

      it 'returns the first number that appears twice' do
        array = [4, 5, 6, 5, 4]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(5)
      end

      it 'returns the first number when duplicate appears immediately' do
        array = [7, 7, 8, 9, 10]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(7)
      end

      it 'returns -1 when no duplicates found' do
        array = [1, 2, 3, 4, 5]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(-1)
      end

      it 'handles empty array' do
        expect(FirstDuplicate.first_duplicate(array: [])).to eq(-1)
      end

      it 'handles array with single element' do
        expect(FirstDuplicate.first_duplicate(array: [1])).to eq(-1)
      end

      it 'handles array with all identical elements' do
        array = [2, 2, 2, 2, 2]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(2)
      end

      it 'duplicate at the end' do
        array = [10, 20, 30, 40, 10]
        expect(FirstDuplicate.first_duplicate(array: array)).to eq(10)
      end
  end
end
