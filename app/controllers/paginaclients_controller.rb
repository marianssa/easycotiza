class PaginaclientsController < ApplicationController
	before_action :authenticate_client!

	def pageclient
		 @client = current_client
    	@cotizacions= Cotizacion.where(client_id: @client.id)
	end
	
end
