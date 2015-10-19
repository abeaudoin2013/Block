FactoryGirl.define do 
	
	factory :document do 
		body "book, cloak, estate, pumpkin, beard"
		
	end
	
	factory :invdocument do 
		body 1
		
	end
	
	factory :user do 
		username "francesca"
		password_digest "1234"
		bio "student"
		email "francesca@nycda.com"
	end
	
	factory :baduser do 
		username "ethan"
		password_digest "1234"
		bio "teacher"
		email nil 
	end	
	
end