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

	end
	
end
