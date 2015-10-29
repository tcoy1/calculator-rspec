require 'rspec'
require 'calculator'

describe Calculator do

	describe 'addition' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.add(2, 3)
			expect(actual).to be_a Integer
		end
		
		it 'can add many numbers' do
			calc = Calculator.new
			actual = calc.add(1, 2, 3, 4)
			expect(actual).to eq 10
		end
	end

	describe 'subtraction' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.subtract(1, 2)
			expect(actual).to be_a Integer
		end
		
		it 'can subtract zero' do
			calc = Calculator.new
			actual = calc.subtract(1, 0)
			expect(actual).to eq 1
		end
		
		it 'can subtract self' do
			calc = Calculator.new
			actual = calc.subtract(1, 1)
			expect(actual).to eq 0
		end
		
		it 'does not commute' do
			calc = Calculator.new
			actual_one = calc.subtract(2, 1)
			actual_two = calc.subtract(1, 2)
			
			expect(actual_one).to eq 1
			expect(actual_two).to eq -1
		end
		
		it 'can subtract many integers' do
			calc = Calculator.new
			actual = calc.subtract(1, 2, 3, 4)
			expect(actual).to eq -8
		end
	end
	
		describe 'multiplication' do
			it 'returns an integer' do
				calc = Calculator.new
				actual = calc.multiply(1, 2)
				expect(actual).to be_a Integer
			end
			
			it 'can multiply by zero' do
				calc = Calculator.new
				actual = calc.multiply(2, 0)
				expect(actual).to eq 0
			end
			
			it 'can multiply by one' do
				calc = Calculator.new
				actual = calc.multiply(2, 1)
				expect(actual).to eq 2
			end
			
			it 'does commute' do
				calc = Calculator.new
				actual_one = calc.multiply(2, 3)
				actual_two = calc.multiply(3, 2)
				
				expect(actual_one).to eq 6
				expect(actual_two).to eq 6
			end
			
			it 'can multiply many integers' do
				calc = Calculator.new
				actual = calc.multiply(1, 2, 3, 4)
				expect(actual).to eq 24
			end
		end
	
		describe 'division' do
			it 'returns an integer' do
				calc = Calculator.new
				actual = calc.divide(4, 2)
				expect(actual).to be_a Integer
			end
			
			it 'can divide zero' do
				calc = Calculator.new
				actual = calc.divide(0, 2)
				expect(actual).to eq 0
			end
			
			it 'can divide by one' do
				calc = Calculator.new
				actual = calc.divide(2, 1)
				expect(actual).to eq 2
			end
			
			it 'can not divide by zero' do
				calc = Calculator.new
				expect{calc.divide(2, 0)}.to raise_error(ZeroDivisionError)
			end
			
			it 'does commute' do
				calc = Calculator.new
				actual_one = calc.divide(2.0, 4.0)
				actual_two = calc.divide(4.0, 2.0)
				
				expect(actual_one).to eq 0.5
				expect(actual_two).to eq 2
			end
			
			it 'can divide many integers' do
				calc = Calculator.new
				actual = calc.divide(256, 16, 4, 2)
				expect(actual).to eq 2
			end
		end
end