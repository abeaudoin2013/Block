class Document < ActiveRecord::Base
	belongs_to :user
	
	def verify_five(words)
		score = 0
		words_result = {found: [], missing: []}
		# loops through words
		for word in words
			if body.downcase.gsub(/[.,-\/]/, '').include?(word)
				score += 1
				words_result[:found].push word 
			else
				words_result[:missing].push word 
			end
		end
		
		if score >= 5
			true
		else
			words_result
		end
	end
end
