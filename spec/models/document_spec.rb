require 'rails_helper'

RSpec.describe Document, type: :model do
	
	describe "verify_five" do
		let(:document) {FactoryGirl.build(:document)}
		
		it "verifies the five words in the document" do 
			expect(document.verify_five(beard, estate, pumpkin, cloak, book)).to eq ("beard, estate, pumpkin, cloak, book")
		end
	end
	
end
	
	