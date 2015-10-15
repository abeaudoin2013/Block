class DocumentsController < ApplicationController

	def index
		@documents = Document.all
	end

	def create
		@document = Document.create(document_params)
		if @document.five
			redirect_to root_path, notice: "Good job!"
		else 
			redirect_to edit_document_path(@document.id), notice: "You need to fit in the missing words!"
		end
	end
private 

def document_params
	params.require(:document).permit(:body).merge(user: current_user)
end

end