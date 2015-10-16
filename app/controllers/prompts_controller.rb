class PromptsController < ApplicationController
	def index
	@prompt = Prompt.order("RANDOM()").first
	@document = Document.new
	@user = current_user 
	end

	def create
		@document = Document.create(params.require(:document).permit(:body).merge(user: current_user))
		if @document.save
		redirect_to user_path
		else
			redirect_to prompts_path
		end
	end

end
