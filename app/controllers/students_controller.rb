class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
    end
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id)
    end
end
