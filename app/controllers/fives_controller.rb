class FivesController < ApplicationController
before_action :authorize_user

	def index
		@user = current_user 
		@document = Document.new
		@fives = Five.all.sample(5)
		words = @fives.map {|f| f.word}
		@collected_words = words.join ","
	end
	
	def show 
		
	end
	
	def edit
		
	end
	
	def create
		@document = Document.new(body: params[:document][:body], user: current_user)
		words = params[:document][:words].split(",")
		@words = params[:document][:words]
		puts words.inspect
		if @document.verify_five(words) == true
			@document.save
			redirect_to current_user, notice: "Good job " + current_user.username + "!"
		else
			saved_words = @document.verify_five(words) 
			redirect_to five_path(:body => params[:document][:body], words: params[:document][:words], found_words: saved_words[:found], missing_words: saved_words[:missing]), notice: "You need to fit in the missing words: #{saved_words[:missing].join(", ")}."
		end
	end
	
	
	private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end
			
end
