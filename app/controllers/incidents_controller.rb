class IncidentsController < ApplicationController
    before_action :authenticate_user!
    
    def show
         @incident = Incident.find_by_id(params[:id])
        return render_not_found if @incident.blank?
    end
    
        private
    
    def incident_params
        params.require(:incident).permit(:strategies, :description, :type)
    end
end
