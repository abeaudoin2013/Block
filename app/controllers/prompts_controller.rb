class PromptsController < ApplicationController
	def index
		@prompt = Prompt.all
	end
end
