class PaginaclientsController < ApplicationController
	before_action :authenticate_client!

	def pageclient
		 @client = current_client
    	@cotizacions= Cotizacion.where(client_id: @client.id)
	end

	def respuestas
		@cotizaciones =Cotizacion.where(client_id: current_client.id)
		@respuestas= Answer.where(cotizacion_id: @cotizaciones.ids)
	end


	def answer_success

		if params[:answer]
			@respuesta = Answer.find(params[:answer])
			@respuesta.estado = true
			@enterprise = Enterprise.where(id: @respuesta.enterprise_id)
			
		end

	end
	
end
