require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combination path', {:type => :feature}) do
	it('processes the user entry and returns the coin combination') do
		visit('/')
		fill_in('user_cents', :with => '149')
		click_button('Enter')
		expect(page).to have_content('5 quarters, 2 dimes, 0 nickels and 4 pennies')
	end
end