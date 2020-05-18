class MatchesController < ApplicationController
  def create
    match_params = params.permit(:user_id1, :user_id2)
    @match = Interaction.create(match_params)
  end
end
