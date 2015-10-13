class Document < ActiveRecord::Base
	belongs_to :user
	# validates :body, length: { minimum: 200 } #this means minimum 200 char, not words
end
