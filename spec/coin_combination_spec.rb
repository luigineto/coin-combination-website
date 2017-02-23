require('rspec')
require('coin_combination')

describe('String#jo_ken_po') do
	it('returns the number of pennies for a value of 1 cent') do
		expect('1'.coin_combination()).to(eq([1,0,0,0]))
	end

	it('returns the number of nickels and pennies for a value of 9 cents') do
		expect('9'.coin_combination()).to(eq([4,1,0,0]))
	end

	it('returns the number of dimes, nickels and pennies for a value of 24 cents') do
		expect('24'.coin_combination()).to(eq([4,0,2,0]))
	end

	it('returns the number of quarters, dimes, nickels and pennies for a value of 218 cents') do
		expect('218'.coin_combination()).to(eq([3,1,1,8]))
	end

end