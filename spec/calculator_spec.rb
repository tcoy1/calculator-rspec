require 'rspec'
require 'calculator'

describe Calculator do

	describe 'addition' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.add(2,3)
			expect(actual).to be_a Integer
		end
		
		it 'can add many numbers' do
			calc = Calculator.new
			actual = calc.add(1, 2, 3, 4)
			expect(actual).to eq 10
		end
	end

end