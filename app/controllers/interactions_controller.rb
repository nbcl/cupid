# Class in charge of creating new Interactions
class InteractionsController < ApplicationController
<<<<<<< Updated upstream
    def new
        @interaction = Interaction.new
        @destino = User.find(params[:id])
        @spotify = Admin.find(1)
    end
=======
  def new
    @interaction = Interaction.new
    @destino = User.find(params[:id])
  end
>>>>>>> Stashed changes

  def create
    interaction_params = params.require(:citum).permit(:like, :user_id, :user_id_destiny)
    @interaction = Interaction.create(interaction_params)
    redirect_to '/interactions/new/' + params[:id].to_s if @interaction.save
  end
end
