class Document < ActiveRecord::Base
	belongs_to :user
# 	validates_length_of :body, minimum: 250, too_short: 'Your essay must be at least 200 words.',
#                       tokenizer: ->(body) { body.scan(/[a-zA-Z]+/) }
 
 
  # str.split(/[a-zA-Z]+/).size                    
	# validates :body, length: { minimum: 200 } #this means minimum 200 char, not words
# 	def five
# 		require "set"
# 		new_document = body.gsub /[.,-\/]/, ''
# 	 	random_options = Five.all.sample(5)
# 	 		document_set = Set.new(new_document.downcase.split)
# 		
# 	 		new_array = random_options.select { |option| Set.new(option.word.downcase.split).subset? document_set } 
# 	 	if new_array.length == 5
# 		    return true
# 		else 
# 		    return false
# 	    end
# 	end
	




	def verify_five(words)
		score = 0
		# loops through words
		for word in words
			score += 1 if body.downcase.gsub(/[.,-\/]/, '').include?(word)	
		end
		
		if score >= 5
			true
		else
			false
		end
	end
end
