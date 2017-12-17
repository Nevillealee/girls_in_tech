require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
    describe "students#index action" do
        it "should successfully render page after authenticated user signs in" do
            user = create(:user)
            sign_in user
            get :index
            expect(response).to have_http_status(:success)
        end
    end
    
  describe "students#edit action" do
    it "should successfully show the edit form if the student is found" do
        user = create(:user)
        sign_in user
        student = create(:student)
        get :edit, params: { id: student.id}
        expect(response).to have_http_status(:success)
    end

    it "should return a 404 error message if the gram is not found" do
        user = create(:user)
        sign_in user
        student = create(:student)
        get :edit, params: { id: "ELMO"}
        expect(response).to have_http_status(:not_found)
    end
  end
end
