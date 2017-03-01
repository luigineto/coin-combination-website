require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
also_reload('lib/**/*.rb')

get('/') do
	erb(:index)
end

get('/result') do
	@user_quarters = params.fetch('user_cents').coin_combination().at(3)
	@user_dimes = params.fetch('user_cents').coin_combination().at(2)
	@user_nickels = params.fetch('user_cents').coin_combination().at(1)
	@user_pennies = params.fetch('user_cents').coin_combination().at(0)

	erb(:result)
end