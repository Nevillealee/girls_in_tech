class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @searches = Student.search(params[:search])
        @students = Student.all

    end
    
    def create
    end
    
    def new
        @student = Student.new
    end
    
    def show
        @student = Student.find_by_id(params[:id])
        # <!--QUERY NOT WORKING-->
        # @numOfStrat = Student.select(:stratgies).distinct.joins(:incidents)
    end
    
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id)
    end
end