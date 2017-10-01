require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
    describe "students#index action" do
        it "should successfully render page after authenticated user signs in" do
            user = FactoryGirl.create(:user)
            sign_in user
            
            get :index
            expect(response).to have_http_status(:success)
        end
    end
end
