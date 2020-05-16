# frozen_string_literal: true

class PlatosController < ApplicationController
  def new
    @plato = Plato.new
  end

  def index
    @platos = Plato.all
    # @user = User.find(params[:id])
  end

  def show
    @plato = Plato.find(params[:id])
  end

  def edit
    @plato = Plato.find(params[:id])
  end

  def create
    plato_params = params.require(:plato).permit(:nombre, :descripcion, :precio)
    @plato = Plato.create(plato_params)

    if @plato.save
      redirect_to plato_path(@plato.id), notice: 'Plato creado con éxito'
    else
      redirect_to platos_new_path, notice: 'Ocurrió un error al crear el plato.'
    end
  end
end
