require './max_sum_hourglass.rb'

RSpec.describe MaxSumHourGlass, type: :class do
    describe 'max sum hour glass' do

      it 'normal case' do
        input = [
          [1, 1, 1, 0, 0, 0],
          [0, 1, 0, 0, 0, 0],
          [1, 1, 1, 0, 0, 0],
          [0, 0, 2, 4, 4, 0],
          [0, 0, 0, 2, 0, 0],
          [0, 0, 1, 2, 4, 0],
        ]
        expect(MaxSumHourGlass.call(array: input)).to eq(19)
      end

      it 'all zero' do
        input = [
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
        ]        
        expect(MaxSumHourGlass.call(array: input)).to eq(0)
      end

      it 'all negative number' do
        input = [
          [-1, -1, -1, -2, -2, -2],
          [-2, -1, -2, -2, -2, -2],
          [-1, -1, -1, -2, -2, -2],
          [-2, -2, -2, -1, -1, -2],
          [-2, -2, -2, -2, -1, -2],
          [-2, -2, -1, -1, -1, -2],
        ]        
        expect(MaxSumHourGlass.call(array: input)).to eq(0)
      end
      
      it 'all maximum' do
        input = [
          [9, 9, 9, 9, 9, 9],
          [9, 9, 9, 9, 9, 9],
          [9, 9, 9, 9, 9, 9],
          [9, 9, 9, 9, 9, 9],
          [9, 9, 9, 9, 9, 9],
          [9, 9, 9, 9, 9, 9],
        ]             
        expect(MaxSumHourGlass.call(array: input)).to eq(63)
      end

      it 'sparse matrix (Many Zeros, Only One Hourglass with High Values' do
        input = [
          [0, 0, 0, 0, 0, 0],
          [0, 9, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 9, 9, 9, 0],
          [0, 0, 0, 9, 0, 0],
          [0, 0, 0, 0, 0, 0],
        ]                  
        expect(MaxSumHourGlass.call(array: input)).to eq(36)
      end

      it 'mixed values with varying heights' do
        input = [
          [1, 2, 3, 4, 5, 6],
          [7, 8, 9, 10, 11, 12],
          [13, 14, 15, 16, 17, 18],
          [19, 20, 21, 22, 23, 24],
          [25, 26, 27, 28, 29, 30],
          [31, 32, 33, 34, 35, 36],
        ]                         
        expect(MaxSumHourGlass.call(array: input)).to eq(203)
      end

      it 'checkboard pattern' do
        input = [
          [1, 0, 1, 0, 1, 0],
          [0, 1, 0, 1, 0, 1],
          [1, 0, 1, 0, 1, 0],
          [0, 1, 0, 1, 0, 1],
          [1, 0, 1, 0, 1, 0],
          [0, 1, 0, 1, 0, 1],
        ]                               
        expect(MaxSumHourGlass.call(array: input)).to eq(5)
      end
    end
end
