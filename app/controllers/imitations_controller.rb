class ImitationsController < ApplicationController

	def index
		@document = Document.new
		@piece = Imitation.pluck(:piece).shuffle[0]
		blah = "The authorities began setting up roadblocks and checkpoints and deployed police officers and soldiers, in response to what the government called a 'wave of terrorism.'"
		text = @piece
		sanitized_piece = Imitation.document_reader(@piece)
		sanitized_input = Imitation.input_reader(blah)
		@checker = Imitation.checker(sanitized_piece, sanitized_input)
	end
end
