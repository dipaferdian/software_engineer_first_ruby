require './is_sort?.rb'

RSpec.describe IsSort, type: :class do
    describe 'is sorted' do

      it 'normal case' do
        input = [1, 2, 3, 4, 5]
        expect(IsSort.call(array: input)).to be_truthy
      end

      it 'unsorted' do
        input = [5, 3, 1]
        expect(IsSort.call(array: input)).to be_falsey
      end

      it 'single element' do
        input = [1]
        expect(IsSort.call(array: input)).to be_truthy
      end

      it 'unsorted with duplicate' do
        input = [1, 2, 2, 3, 4, 5]
        expect(IsSort.call(array: input)).to be_truthy
      end

      it 'mixed negative and positive' do
        input = [-10, -5, 0, 3, 7]
        expect(IsSort.call(array: input)).to be_truthy
      end

      it 'all element are same' do
        input = [4, 4, 4, 4, 4]
        expect(IsSort.call(array: input)).to be_truthy
      end

      it 'empty array' do
        input = []
        expect(IsSort.call(array: input)).to be_truthy
      end
    end
end
