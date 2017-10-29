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
    
    def show
        @student = Student.find_by(params[:id])
        # <!--QUERY NOT WORKING-->
        @numOfStrat = Student.select(:stratgies).distinct
    end
    
    
    private
    
    def current_student 
        @current_student = Student.find_by(params[:id])
    end
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id)
    end
end