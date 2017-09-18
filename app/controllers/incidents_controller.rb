class IncidentsController < ApplicationController
    before_action :authenticate_user!
    
    def show
         @incident = Incident.find_by_id(params[:id])
    end
    
        private
    
    def incident_params
        params.require(:incident).permit(:strategies, :description, :type)
    end
end
