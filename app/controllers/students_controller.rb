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
        return render_not_found if @student.blank?
        @interventionCount =Student.getInterventions
    end
    
    def edit
        @student = Student.find_by_id(params[:id])
        return render_not_found if @student.blank?
    end
    
    def update
        @student = Student.find_by_id(params[:id])
        if @student.update_attributes(student_params)
            flash[:success] = "Student updated"
            redirect_to @student
        else
            render 'edit'
        end
    end
    
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :studentId, :service_program)
    end
    def render_not_found
        render plain: "Not found error 404", status: :not_found
    end
end