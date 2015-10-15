class PromptsController < ApplicationController
	def index
	@prompt = Prompt.order("RANDOM()").first
	end
end
