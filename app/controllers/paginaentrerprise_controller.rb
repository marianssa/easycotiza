class PaginaentrerpriseController < ApplicationController
	before_action :authenticate_enterprise!
  before_action :cancelado, only: [:cotizaciones, :solicitudes]
	def pagenterprise

	@grouped_payments =Payment.new
    @enterprise =current_enterprise
    @calificacion = Calificacion.all
    @cotizaciones = Cotizacion.all
    @categorias =Category.all


end

def cotizaciones
if @mostrar
  @enterprise =current_enterprise
  @cotizaciones = Cotizacion.where(category_id: @enterprise.category_id)
else
  flash[:notice]= "No olvide suscribirse a la pagina"
  redirect_to profesionales_path
  end
end

def cotizacionesempresa 
if @mostrar
  if Cotizacion.exists? enterprise_id: current_enterprise.id
    @cotizaciones = Cotizacion.find(:all,:enterprise_id => current_enterprise.id)
  end
else 
  flash[:notice]= "No olvide suscribirse a la pagina"
  redirect_to profesionales_path
end
end
def calificacion
    @calificaciones = Calificacion.where(enterprise_id: current_enterprise.id)
  end
private

def cancelado
   @mostrar = Payment.where(enterprise_id: current_enterprise.id).last

  end


end

