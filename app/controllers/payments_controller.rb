class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_enterprise!

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
    @payments = Payment.where(enterprise_id: current_enterprise.id)
  end

  # GET /payments/new
  def new
    if params[:plan]
      @payment = Payment.new
      @payment.plane_id = params[:plan]
      @payment.nombre_empresa = current_enterprise.nombre
    end
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params) 
  
      @payment.enterprise_id = current_enterprise.id
      @payment.nombre_empresa = current_enterprise.nombre
      @payment.tiempo_termino = Time.now

      if @payment.plane_id == 1
             @payment.tiempo_termino = @payment.tiempo_termino+ 62.days
           elsif @payment.plane_id == 2
             @payment.tiempo_termino = @payment.tiempo_termino + 183.days
            elsif @payment.plane_id == 3
             @payment.tiempo_termino = @payment.tiempo_termino + 366.days
      end
      respond_to do |format|
        if @payment.save
        
          format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
          format.json { render :show, status: :created, location: @payment }
        else
          format.html { render :new }
          format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit( :identifier, :payer_id, :completed, :canceled, :imagen, :tiempo_termino,:enterprise_id,:nombre_empresa, :plane_id, :imagen_cache)
    end
end
