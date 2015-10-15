class PromptsController < ApplicationController
	def index
	@prompt = Prompt.order("RANDOM()").first
	@document = Document.new
	end

	def create
		@document = Document.create(params.require(:document).permit(:body))
		redirect_to prompts_path
	end

end
