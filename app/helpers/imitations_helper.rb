module ImitationsHelper
	def current_piece(piece)
 		session[:piece] = piece
 	end
end
