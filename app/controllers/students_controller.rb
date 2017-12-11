class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @students = Student.search(params[:search])
    end
    
    def create
        @student = Student.create(student_params)
        if @student.valid?
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    def new
        @student = Student.new
    end
    
    def show
        @student = Student.find_by_id(params[:id])
        @interventionCount =Student.getInterventions
    end
    
    def edit
    end
    
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id, :service_program)
    end
end