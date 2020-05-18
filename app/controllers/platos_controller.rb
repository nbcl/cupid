# frozen_string_literal: true

# Este controlador contiene todos los metodos necesarios para el CRUD de platos
class PlatosController < ApplicationController
  def new
    @plato = Plato.new
  end

  def index
    @platos = Plato.all
    # @user = User.find(params[:id])
    render 'locals/menu'
  end

  def show
    @plato = Plato.find(params[:id])
    @local = Local.find(@plato.local_id)
  end

  def edit
    @plato = Plato.find(params[:id])
  end

  def create
    plato_params = params.require(:plato).permit(:nombre, :descripcion, :precio, :local_id)
    @plato = Plato.create(plato_params)

    if @plato.save
      redirect_to plato_path(@plato.id), notice: 'Plato creado con éxito'
    else
      redirect_to platos_new_path, notice: 'Ocurrió un error al crear el plato.'
    end
  end

  def update
    plato_params = params.require(:plato).permit(:nombre, :descripcion, :precio)
    @plato = Plato.find(params[:id])

    if @plato.update(plato_params)
      redirect_to plato_path(@plato.id), notice: 'Plato editado con éxito'
    else
      redirect_to platos_new_path, notice: 'Ocurrió un error al editar el plato.'
    end
  end

  def destroy
    @plato = Plato.find(params[:id])
    @plato.destroy
    redirect_to platos_path, notice: 'Plato eliminado con éxito'
  end
end
