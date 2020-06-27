# Class in charge of Valoracions's CRUD
class ValoracionsController < ApplicationController
  def new
    @valoracion = Valoracion.new
    @local = Local.find(params[:id])
  end

  def index
    @valoraciones = Valoracion.all
    # @user = User.find(params[:id])
    render 'valoraciones/index'
  end

  def show
    @valoracion = Valoracion.find(params[:id])
    @local = Local.find(@valoracion.local_id)
  end

  def edit
    @valoracion = Valoracion.find(params[:id])
  end

  def create
    valoracion_params = params.require(:valoracion).permit(:valor, :user_id, :local_id)
    @valoracion = Valoracion.create(valoracion_params)

    if @valoracion.save
      redirect_to valoracion_path(@valoracion.id), notice: 'Valoracion creada con éxito'
    else
      redirect_to valoracions_new_path, notice: 'Ocurrió un error al crear la valoracion.'
    end
  end

  def update
    valoracion_params = params.require(:valoracion).permit(:valor, :user_id, :local_id)
    @valoracion = Valoracion.find(params[:id])

    if @valoracion.update(valoracion_params)
      redirect_to valoracion_path(@valoracion.id), notice: 'Valoracion editada con éxito'
    else
      redirect_to valoracions_new_path, notice: 'Ocurrió un error al editar la Valoracion.'
    end
  end

  def destroy
    @valoracion = Valoracion.find(params[:id])
    @valoracion.destroy
    redirect_to valoracions_path, notice: 'Valoracion eliminada con éxito'
  end
end
