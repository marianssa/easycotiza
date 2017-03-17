class CalificacionsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!
  # GET /calificacions
  # GET /calificacions.json
  def index
    @client = current_client
    @calificacions = Calificacion.where(client_id: @client.id)
  end

  # GET /calificacions/1
  # GET /calificacions/1.json
  def show
    @client = current_client
    @calificacion = Calificacion.find(params[:client_id])
  end

  # GET /calificacions/new
  def new
    @client = current_client
    if params[:enterprise_id]
      @calificacion = @client.calificacions.new
      @calificacion.enterprise_id = params[:enterprise_id]
  end

  # GET /calificacions/1/edit
  def edit
    @client = current_client
    @calificacion = Calificacion.find(params[:id])
  end

  # POST /calificacions
  # POST /calificacions.json
  def create
    @client = current_client
    @calificacion = @client.calificacions.new(calificacion_params)

    respond_to do |format|
      if @client.save
        flash[:notice] = "Su calificacion a sido guardada"
        redirect_to client_calificacions_path(params[:client_id])
      else
        format.html { render :new }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calificacions/1
  # PATCH/PUT /calificacions/1.json
  def update
    @client = current_client
    @calificacion = Calificacion.find(params[:id])
    respond_to do |format|
      if @calificacion.update(calificacion_params)
        format.html { redirect_to @calificacion, notice: 'Calificacion editada' }
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
    @client = current_client
    @calificacion = Calificacion.find(params[:id])
    if @cotizacion.destroy
    respond_to do |format|
      format.html { redirect_to client_cotizacion_path, notice: 'Calificacion was successfully destroyed.' }
      format.json { head :no_content }
     end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificacion
      @calificacion = Calificacion.find(params[:id])
    end
    def set_client
      @client = Client.find(params[:client_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calificacion_params
       params.require(:calificacion).permit(:comentario, :enterprise_id, :client_id, :nota)
    end
end
