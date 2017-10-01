class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
    end
    
    def create
    end
    
    def new
    end
    
    private
    
    def student_params
        params.require(:student).permit(:name, :grade, :dob, :student_id)
    end
end
