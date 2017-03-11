class CotizacionsController < ApplicationController
  
  before_action :set_client,only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!

  # GET /cotizacions
  # GET /cotizacions.json

  def index
    @client = current_client
    @cotizacions= Cotizacion.where(client_id: @client.id)
  end

  # GET /cotizacions/1
  # GET /cotizacions/1.json
  def show
    @client = current_client
    @cotizacion = Cotizacion.find(params[:client_id])
  end

  # GET /cotizacions/new
  def new
    @client = current_client
    if params[:enterprise_id]
      @cotizacion=@client.cotizacions.new
      @cotizacion.enterprise_id = params[:enterprise_id]
    
    else
      @cotizacion = @client.cotizacions.new
    end
  end

  # GET /cotizacions/1/edit
  def edit
      @client=current_client
      @cotizacion = Cotizacion.find(params[:id])
    
  end

  # POST /cotizacions
  # POST /cotizacions.json
  #diegonadas

  #Asociacion de id cliente con cotizacion
  def create
    @client = current_client
    @cotizacion = @client.cotizacions.new(cotizacion_params)
   
    if @client.save
      flash[:notice]= "A agregado una nueva cotizacion"
      redirect_to client_cotizacions_path(params[:client_id])
    else
      render :new
    end
  end

  # PATCH/PUT /cotizacions/1
  # PATCH/PUT /cotizacions/1.json

  def update
    @client =current_client
    @cotizacion = Cotizacion.find(params[:id])
     if @cotizacion.update(cotizacion_params)
      flash[:notice]= "Has editado la cotizacion"
      redirect_to client_cotizacions_path(params[:client_id])
    else
      render :edit
    end
  end

  # DELETE /cotizacions/1
  # DELETE /cotizacions/1.json
  def destroy
   @client = current_client
   @cotizacion =Cotizacion.find(params[:id])
   if @cotizacion.destroy
    flash[:notice]="Has eliminado la cotizacion"
    redirect_to client_cotizacions_path(params[:client_id])
  end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def cotizacion_params
      params.require(:cotizacion).permit(:id,:answer_id,:enterprise_id,:descripcion, :estado,:category_id, :client_id, :area, :sector, :tiempo, :provincia)
    end

    def set_client
      @client = Client.find(params[:client_id])
    end
   
    
end
