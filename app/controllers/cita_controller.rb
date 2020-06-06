class CitaController < ApplicationController

    def new
        @citum = Citum.new 
    end

    def create
        match_params = params.require(:match).permit(:user_id1, :user_id2)
        local_parms = params.require(:local).permit(:local_id)
        @citun = Citum.create(match_params, local_parms)
        if @citum.save
            redirect_to matches_find_pa, notice: 'Cita creada con éxito'
        else
            redirect_to gustos_new_path, notice: 'Ocurrió un error al crear la cita.'
        end

    def index
        @cita = Citum.all
    end

    def show
        @citum = Citum.find(param[:id])
    end

end
