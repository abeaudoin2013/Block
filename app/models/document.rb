class Document < ActiveRecord::Base
	belongs_to :user
# 	validates_length_of :body, minimum: 250, too_short: 'Your essay must be at least 200 words.',
#                       tokenizer: ->(body) { body.scan(/[a-zA-Z]+/) }
 
 
  # str.split(/[a-zA-Z]+/).size                    
	# validates :body, length: { minimum: 200 } #this means minimum 200 char, not words

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
