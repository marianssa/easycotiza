class PaginaentrerpriseController < ApplicationController
	before_action :authenticate_enterprise!
	def pagenterprise

	@grouped_payments = [
      [Payment.new,                 Payment.recurring.build              ],
      [Payment.digital.build,       Payment.digital.recurring.build      ],
      [Payment.digital.popup.build, Payment.digital.popup.recurring.build]
    ]
    @enterprise =current_enterprise
    @calificacion = Calificacion.all
    @cotizaciones = Cotizacion.all
    @categorias =Category.all


end

def cotizaciones
  @enterprise =current_enterprise
  @cotizaciones = Cotizacion.where(category_id: @enterprise.category_id)
end

def solicitudes 
  if Cotizacion.exists? enterprise_id: current_enterprise.id
    @cotizaciones = Cotizacion.find(:all,:enterprise_id => current_enterprise.id)
  end
end

end

