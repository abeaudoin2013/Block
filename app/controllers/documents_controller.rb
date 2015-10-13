class DocumentsController < ApplicationController

	def new 
		@document = Document.new
	end

	def create
		@document = Document.create(document_params)
		redirect_to @document
	end

	def show
		@document = Document.find((params[:id]))
	end	
	
	def index
		@documents = Document.all
	end

private 

def document_params
	params.require(:document).permit(:body).merge(user: current_user)
end

end