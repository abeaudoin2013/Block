class FivesController < ApplicationController
	def index 
		@document = Document.new
	end
	
	def show 
		
	end
	
	def create
		@document = Document.create(document_params)
		if @document.five
			redirect_to @user, notice: "Good job!"
		else 
			redirect_to edit_document_path(@document.id), notice: "You need to fit in the missing words!"
		end
	end
	
	private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end
end
