class Five < ActiveRecord::Base

def five
	require "set"
	document = "I enjoyed my day yesterday in my cloak with a book and my false teeth while on my gondala at my estate." 
	new_document = document.gsub /[.,-\/]/, ''
	all_options = ["gondala", "false teeth", "cloak", "book", "estate"]
	random_options = all_options.sample(5)
		document_set = Set.new(new_document.downcase.split)
	
	new_array = random_options.select { |option| Set.new(option.downcase.split).subset? document_set } 
	if new_array.length == 5
	    puts "great!"
	else 
	    puts "brah include all the words!"
    end
 end
end
