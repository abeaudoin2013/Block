class DocumentsController < ApplicationController

	def index
		@documents = Document.all
	end

	def create
		
	end
	
private 

def document_params
	params.require(:document).permit(:body).merge(user: current_user)
end

end