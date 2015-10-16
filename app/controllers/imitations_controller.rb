class ImitationsController < ApplicationController
before_action :authorize_user, only: [:create]
	def index
 		@piece = Imitation.pluck(:piece).shuffle[0]
		@document = Document.new
		@user = current_user
		# blah = "The authorities began setting up roadblocks and checkpoints and deployed police officers and soldiers, in response to what the government called a 'wave of terrorism.'"
		# text = @piece
		# sanitized_piece = Imitation.document_reader(@piece)
		# sanitized_input = Imitation.input_reader(blah)
		# @checker = Imitation.checker(sanitized_piece, sanitized_input)
	end

	def create
		@user = current_user
		@document = Document.create(document_params)

		if @document.save
			redirect_to @user, notice: "Nice!"
		else
			redirect_to imitation_path, notice: "There was a problem"
		end
	end

	private 

	def document_params
		params.require(:document).permit(:body).merge(user: current_user)
	end

	

end
