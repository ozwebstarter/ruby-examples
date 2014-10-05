class ReplaceChars

	def replace_chars(string, pairs)
		# slice into pair
		split_pairs = pairs.chars.each_slice(3).map(&:join)

		# array to hold string modified positions
		mods = []

		# loop each pair
		split_pairs.each do |item|
			# split pair
			pair = item.split(',')
			# store positions
			positions = []

			# find all occurrence
			pos = -1
			while (pos = string.index(pair.first, pos + 1))
				# store postions
				positions << pos
			end

			# targets to replace
			targets = positions - mods

			# targets exist
			if targets.length >= 1
				# loop targets
				targets.each do |item|
				# insert replacement at postion
				string[item.to_i] = pair.last
				end
			end
		
			# store modified position
			mods.concat positions
		end
		# return modified string
		return string
	end

end