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
  
   describe "students#update action" do
    it "should allow users to successfully update grams" do
        user = create(:user)
        sign_in user
        student = create(:student, name: "Initial value")
        patch :update, params: {id: student.id, student: {name: "Updated"}}
        expect(response).to redirect_to root_path
        student.reload
        expect(student.name).to eq "Updated"
    end

    it "should have http 404 error if the gram cannot be found" do
        user = create(:user)
        sign_in user
        patch :update, params: {id: "ELMO", student: {name: "Updated"}}
        expect(response).to have_http_status(:not_found)
    end

    it "should render the edit form with an http status of unprocessable_entity" do
        user = create(:user)
        sign_in user
        student = create(:student)
        patch :update, params: {id: student.id, student: {name: ''}}
        expect(response).to have_http_status(:unprocessable_entity)
    end
  end 
  
  describe "students#destroy action" do
    it "should allow a user to destroy students" do
        user = create(:user)
        sign_in user
        
        student = create(:student) 
        delete :destroy, params: {id: student.id}
        expect(response).to redirect_to root_path
        student = Student.find_by_id(student.id)
        expect(student).to eq nil
    end
    
    it "should return a 404 message if we cannot find a student with the id that is specified" do
        user = create(:user)
        sign_in user
        student = create(:student)
        delete :destroy, params: {id: "ELMO"}
        expect(response).to have_http_status(:not_found)       
    end
  end
  
end
