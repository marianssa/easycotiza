class CalificacionsController < ApplicationController
  before_action :set_calificacion, only: [:show, :edit, :update, :destroy]

  # GET /calificacions
  # GET /calificacions.json
  def index
    @calificacions = Calificacion.all
  end

  # GET /calificacions/1
  # GET /calificacions/1.json
  def show
    @calificacion = current_client.calificacion.find(params[:id])
  end

  # GET /calificacions/new
  def new
    @calificacion = Calificacion.new
  end

  # GET /calificacions/1/edit
  def edit
  end

  # POST /calificacions
  # POST /calificacions.json
  def create
    @calificacion = current_client.calificacions.new(calificacion_params)
    @calificacion.client = @client
    @calificacion.client_id = current_client.id

    respond_to do |format|
      if @calificacion.save
        format.html { redirect_to client_calificacions_path(params[:client_id]), notice: 'Calificacion was successfully created.' }
        format.json { render :show, status: :created, location: @calificacion }
      else
        format.html { render :new }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calificacions/1
  # PATCH/PUT /calificacions/1.json
  def update
    respond_to do |format|
      if @calificacion.update(calificacion_params)
        format.html { redirect_to @calificacion, notice: 'Calificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @calificacion }
      else
        format.html { render :edit }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificacions/1
  # DELETE /calificacions/1.json
  def destroy
    @calificacion.destroy
    respond_to do |format|
      format.html { redirect_to client_cotizacion_path, notice: 'Calificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificacion
      @calificacion = Calificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calificacion_params
       params.require(:calificacion).permit(:comentario, :enterprise_id, :client_id, :nota)
    end
end
