class FivesController < ApplicationController
	def index 
		@document = Document.new
	end
	
	def show 
		
	end
	
	def create
		@document = Document.create(document_params)
		redirect_to five_path
	end
	
	private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end
end
