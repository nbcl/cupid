# frozen_string_literal: true

# This controller allows for CRUD operations methods in the application for Model Gusto
class GustosController < ApplicationController
  def new
    @gusto = Gusto.new
  end

  def index
    @gustos = Gusto.all
    # @user = User.find(params[:id])
  end

  def show
    @gusto = Gusto.find(params[:id])
  end

  def edit
    @gusto = Gusto.find(params[:id])
  end

  def create
    gusto_params = params.require(:gusto).permit(:nombre, :descripcion)
    @gusto = Gusto.create(gusto_params)
    if @gusto.save
      redirect_to gusto_path(@gusto.id), notice: 'Gusto creado con éxito'
    else
      redirect_to gustos_new_path, notice: 'Ocurrió un error al crear el gusto.'
    end
  end

  def update
    gusto_params = params.require(:gusto).permit(:nombre, :descripcion)
    @gusto = Gusto.find(params[:id])

    if @gusto.update(gusto_params)
      redirect_to gusto_path(@gusto.id), notice: 'Gusto editado con éxito'
    else
      redirect_to gustos_new_path, notice: 'Ocurrió un error al editar el gusto.'
    end
  end

  def destroy
    @gusto = Gusto.find(params[:id])
    @gusto.destroy
    redirect_to delete_comuna_path, notice: 'Gusto eliminado con éxito'
  end
end
