# frozen_string_literal: true

# This controller allows for CRUD operations in the app for the Model Comentario
class ComentariosController < ApplicationController
  def new
    @comentario = Comentario.new
    @local = Local.find(params[:id])
  end

  def index
    @comentarios = Comentario.all
    # @user = User.find(params[:id])
  end

  def show
    @comentario = Comentario.find(params[:id])
  end

  def edit
    @comentario = Comentario.find(params[:id])
  end

  def create
    comentario_params = params.require(:comentario).permit(:fecha, :contenido, :local_id, :user_id)
    @comentario = Comentario.create(comentario_params)

    if @comentario.save
      redirect_to comentario_path(@comentario.id), notice: 'Comentario creado con éxito'
    else
      redirect_to comentarios_new_path, notice: 'Ocurrió un error al crear el gusto.'
    end
  end

  def update
    comentario_params = params.require(:comentario).permit(:fecha, :contenido)
    @comentario = Comentario.find(params[:id])

    if @comentario.update(comentario_params)
      redirect_to comentario_path(@comentario.id), notice: 'Comentario editado con éxito'
    else
      redirect_to comentarios_new_path, notice: 'Ocurrió un error al editar el gusto.'
    end
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    redirect_to comentarios_path, notice: 'Comentario eliminado con éxito'
  end
end
