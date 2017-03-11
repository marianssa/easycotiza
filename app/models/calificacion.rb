class Calificacion < ApplicationRecord
	
	belongs_to :enterprises
	belongs_to :client
	validates :comentario, presence: true, length:{in:1..40,  
		too_short:"Debes comentar con un maximo de 40 caracteres el servicio recibido", 
		too_long:"Comentario demasiado largo, maximo 40 caracteres"}
		
	ratyrate_rateable "nota"

	validates :nota, presence: true
end
