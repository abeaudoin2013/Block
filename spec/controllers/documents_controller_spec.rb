require 'rails_helper'

RSpec.describe DocumentsController, type: :controller do 
	
	let(:valid_session) {
		{document_id: 1}
	}
	
	describe "GET #index" do 
	it "assigns all documents as @documents" do 
		document = FactoryGirl.create(:document)
		get :index 
		expect(assigns(:documents)).to eq [document]
		end
	end
	
end	