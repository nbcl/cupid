class CitaController < ApplicationController

    def new
        @citum = Citum.new 
        @invitation = Invitation.find(params[:invitation_id])
    end

    def create
        citum_params = params.permit(:id, :fecha, :user1_id, :user2_id, :local_id, :invitation_id)
        @citum = Citum.new(citum_params)
        if @citum.save
            #render 'invitations/'+@invitation.id.to_s+'/citum/new/'+citum_params.id.to_s, notice: 'Cita creada con éxito'
            render plain: 'CITA CREADA'
        else
            redirect_to matches_find
        end
    
    end

    def index
        @cita = Citum.all
    end

    def show
        @citum = Citum.find(params[:id])
        render 'citum/show'
    end

end
