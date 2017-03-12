class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_enterprise!
  # GET /answers
  # GET /answers.json
  def index
    @enterprise =current_enterprise
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @enterprise = current_enterprise
    @answer = Answer.find(params[:enterprise_id])
  end

  # GET /answers/new
  def new
    @enterprise = current_enterprise
    @answer = @enterprise.answers.new
  end

  # GET /answers/1/edit
  def edit
      @enterprise =current_enterprise
      @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @enterprise = current_enterprise
    @answer = @enterprise.answers.new(answer_params)
    @cotizacionid = params[:cotizacion]
    if @enterprise.save
      flash[:notice]= "A respondido una cotizacion"
      redirect_to enterprise_answers_path(params[:enterprise_id])
    else
      render :new
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
     @enterprise=current_enterprise
      @answer = Answer.find(params[:id])
     if @answer.update(answer_params)
      flash[:notice]= "Has editado tu respuesta"
      redirect_to enterprise_answers_path(params[:enterprise_id])
    else
      render :edit
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @enterprise= current_enterprise
   @answer =Answer.find(params[:id])
   if @answer.destroy
    flash[:notice]="Has eliminado tu respuesta"
    redirect_to enterprise_answers_path(params[:enterprise_id])
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer_cotiza, :accept_date, :fecha, :enterprise_id, :cotizacion_id)
    end
end
