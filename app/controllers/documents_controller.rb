class DocumentsController < ApplicationController

	def index
		@documents = Document.all
	end

	def create
		
	end
	
	def edit
		
	end
	

	
private 

def document_params
	params.require(:document).permit(:body).merge(user: current_user)
end

end