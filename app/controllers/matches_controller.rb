class MatchesController < ApplicationController
  def create
    match_params = params.permit(:user_id1, :user_id2)
    @match = Interaction.create(match_params)
  end

  def index
    @matches = Match.all
  end
  
  def show
    render '/matches'
  end
end
