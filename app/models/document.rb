class Document < ActiveRecord::Base
	belongs_to :user
	# validates :body, length: { minimum: 200 } #this means minimum 200 char, not words
	def five
	require "set"
	new_document = body.gsub /[.,-\/]/, ''
 	random_options = Five.all.sample(5)
 		document_set = Set.new(new_document.downcase.split)
	
 		new_array = random_options.select { |option| Set.new(option.word.downcase.split).subset? document_set } 
 	if new_array.length == 5
	    return true
	else 
	    return false
    end
 end



end
