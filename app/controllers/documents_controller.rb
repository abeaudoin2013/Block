class DocumentsController < ApplicationController
before_action :set_document, only: [:destroy]
	def index
		@documents = Document.all
	end

	def create
		
	end
	
	def edit
		
	end
	
	def destroy
		@user = current_user 
		@document.destroy
		redirect_to user_path(@user), notice: "That document was deleted" 
	end
	
	

	
private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end
	
	def set_document
		begin
			 @document = Document.find(params[:id])
			rescue 
			 flash[:notice] = "That document is not available."
			 redirect_to user_path(@user)
		end
	end
end