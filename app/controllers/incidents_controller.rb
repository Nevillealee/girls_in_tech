class IncidentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
    end
    
    def show
    end
    
    private
    
    def incident_params
        params.require(:incident).permit(:strategies, :description, :type)
    end
end
