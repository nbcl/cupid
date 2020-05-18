class InteractionsController < ApplicationController
    def new
        @interaction = Interaction.new
        @destino = User.find(params[:id])
    end

    def create
      interaction_params = params.permit(:like, :user_id, :user_id_destiny)
      @interaction = Interaction.create(interaction_params)
      if @interaction.save
        redirect_to '/interactions/new/'+params[:id].to_s
      end
    end
end
