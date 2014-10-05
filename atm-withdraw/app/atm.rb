class Atm

	def withdraw(amount, denoms) 
		# array to hold denoms to return for requested amount
		result ||= []

		# amount is not zero or a negative number
		if amount <= 0
			return false
		end

		# loop denoms
		denoms.each do |denom|
			# Check for nil array elements before processing
			if !denom.nil?
				if amount >= denom
					# calculate number of notes 
					demon_count = (amount / denom).floor	
					# store demon notes
					demon_count.times { result << denom }
					# remainder amount
					amount = amount - demon_count * denom
				end
			end
		end

		# return false if amount is greater than zero
		if amount > 0
			return false
		end

		# return demons array
		return result
	end

end