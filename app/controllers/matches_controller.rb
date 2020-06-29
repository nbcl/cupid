# CLass in charge of Matches's CRUD
class MatchesController < ApplicationController
  #  def create
  #    match_params = params.permit(:user_id1, :user_id2)
  #    @match = Interaction.create(match_params)
  #  end

  def new
    @match = Match.new
  end

  def create
    match_params = params.require(match).params.permit(:user_id1, :user_id2)
    @match = Match.create(match_params)
  end

  def index
    @matches = Match.all
  end

  def show
    @matches = Match.all
    @invitations = Invitation.all
    render 'matches/find'

    #  render '/matches'
  end
end
