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
	
	def create
		@document = Document.new(body: params[:document][:body], user: current_user)
		words = params[:document][:words].split(",")
		puts words.inspect
		if @document.verify_five(words)
			@document.save
			redirect_to current_user, notice: "Good job!"
		else 
			redirect_to :back, notice: "You need to fit in the missing words!"
		end
	end
	
	private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end
end
