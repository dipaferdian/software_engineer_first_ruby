require './sum_all.rb'


RSpec.describe SumAll, type: :class do
  describe 'sum all' do
    it 'normal case' do
      input = [1, 2, 3, 4]
      expect(SumAll.call(array: input)).to eq(10)
    end
  
    it 'single element' do
      input = [10]
      expect(SumAll.call(array: input)).to eq(10)
    end
  
    it 'negative' do
      input = [-1, -2, -3, -4]
      expect(SumAll.call(array: input)).to eq(-10)
    end
  
    it 'mixed negative and positive' do
      input = [10, -5, 0, 3, -7]
      expect(SumAll.call(array: input)).to eq(1)
    end
  
    it 'all duplicates' do
      input = [2, 2, 2, 2, 2]
      expect(SumAll.call(array: input)).to eq(10)
    end
  
    it 'all element zero' do
      input = [0, 0, 0, 0]
      expect(SumAll.call(array: input)).to eq(0)
    end
  
    it 'large' do
      input = [1000000, 2000000, 3000000]
      expect(SumAll.call(array: input)).to eq(6000000)
    end
  
    it 'empty' do
      input = []
      expect(SumAll.call(array: input)).to eq(0)
    end
  end
end
