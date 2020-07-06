# frozen_string_literal: true

# Class in charge of CRUD of Citum
class CitaController < ApplicationController
  def new
    @citum = Citum.new
    @invitation = Invitation.find(params[:invitation_id])
  end

  def create
    citum_params = params.permit(:id, :fecha, :user1_id, :user2_id, :local_id, :invitation_id)
    @citum = Citum.new(citum_params)
    @invitation = Invitation.find(citum_params[:invitation_id])
    if @citum.save
      # render 'invitations/'+@invitation.id.to_s+'/citum/new/'+citum_params.id.to_s,
      # notice: 'Cita creada con exito'
      redirect_to invitation_citum_path(@citum.invitation_id, @citum.id)
    else
      redirect_to matches_find_path
    end
  end

  def index
    @cita = Citum.all
  end

  def show
    @citum = Citum.find(params[:id])
    render 'show'
  end
end
