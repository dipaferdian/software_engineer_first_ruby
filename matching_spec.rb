require './matching.rb'

RSpec.describe Matching, type: :class do
  describe 'mathcing' do 

    it 'normal case' do
      input = [1,1,2,2,3]
      expect(Matching.call(array: input)).to eq(2)
    end

    it 'no matching' do
      input = [1,2,3,4,5]
      expect(Matching.call(array: input)).to eq(0)
    end

    it 'all element are the same' do
      input = [1,1,1,1,1]
      expect(Matching.call(array: input)).to eq(2)
    end

    it 'empty' do
      input = []
      expect(Matching.call(array: input)).to eq(0)
    end
  end
end