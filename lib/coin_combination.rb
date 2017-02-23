class String
	define_method(:coin_combination) do
		given_cents = self.to_i()
		coin_combination = [0, 0, 0, 0]

		until given_cents.<(25)
			coin_combination[3] = coin_combination[3].+(1)
			given_cents = given_cents.-(25)
		end

		until given_cents.<(10)
			coin_combination[2] = coin_combination[2].+(1)
			given_cents = given_cents.-(10)
		end

		until given_cents.<(5)
			coin_combination[1] = coin_combination[1].+(1)
			given_cents = given_cents.-(5)
		end

		coin_combination[0] = given_cents

		coin_combination
	end
end