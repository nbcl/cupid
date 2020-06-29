# Comunas controller
# controladores para hacer CRUD de comunas
class ComunasController < ApplicationController
  def new
    @comunas = Comuna.new
  end

  def show
    @comuna = Comuna.find(params[:id])
  end

  def index
    @comunas = Comuna.all
    render 'lista_comunas'
  end

  def edit
    @comuna = Comuna.find(params[:id])
  end

  def create
    @comuna = Comuna.create(:nombre)
    redirect_to comuna_path if @comuna.save
  end

  def update
    comuna_params = params.require(:comuna).permit(:nombre)
    @comuna = Comuna.finf(params[:id])
    redirect_to comuna_path if @comuna.update(comuna_params)
  end

  def destroy
    # debe reemplazar los id de las comunas en los modelos ya existentes por null
    # @user.reasignar(User.where(:comuna_id params[:id]))
    # Local.where(:comuna_id params[:id]) :comuna_id = null
    @comuna = Comuna.find(params[:id])
    @comuna.destroy
    # redirect_to comuna_path, notice: 'Comuna eliminada con exito'
  end
end
