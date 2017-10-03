class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @student = Student.search(params[:search])
    end
    
    def create
    end
    
    def new
        @student = Student.new
    end
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id)
    end
end
