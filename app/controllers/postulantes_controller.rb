# Postulantes
# Aca estan los controladores para que los locales postulen
class PostulantesController < ApplicationController
  # before_action :set_postulante, only: [:show, :edit, :update, :destroy]

  # GET /postulantes
  # GET /postulantes.json
  def index
    @postulantes = Postulante.all
    render 'postulantes/index'
  end

  # GET /postulantes/1
  # GET /postulantes/1.json
  def show
    @postulate = Postulante.find(params[:id])
    render 'show'
  end

  # GET /postulantes/new
  def new
    @postulante = Postulante.new
  end

  # GET /postulantes/1/edit
  # def edit
  # end

  # POST /postulantes
  # POST /postulantes.json
  def create
    @postulante = Postulante.new(postulante_params)

    respond_to do |format|
      if @postulante.save
        format.html { redirect_to postulantes_path, notice: 'Postulante was successfully created.' }
        format.json { render :show, status: :created, location: @postulante }
      else
        format.html { render :new }
        format.json { render json: @postulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulantes/1
  # PATCH/PUT /postulantes/1.json
  def update
    respond_to do |format|
      if @postulante.update(postulante_params)
        format.html { redirect_to @postulante, notice: 'Postulante was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulante }
      else
        format.html { render :edit }
        format.json { render json: @postulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulantes/1
  # DELETE /postulantes/1.json
  def destroy
    @postulante.destroy
    respond_to do |format|
      format.html { redirect_to postulantes_url, notice: 'Postulante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_postulante
    @postulante = Postulante.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def postulante_params
    params.require(:postulante).permit(:name, :content, :autorization)
  end
end
