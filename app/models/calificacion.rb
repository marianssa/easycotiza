class Calificacion < ApplicationRecord
	belongs_to :enterprises
	belongs_to :client
	belongs_to :calificacion
	validates :comentario, presence: true, length:{in:1..40,  
		too_short:"Debes comentar con un maximo de 40 caracteres el servicio recibido", 
		too_long:"Comentario demasiado largo, maximo 40 caracteres"}
		
	ratyrate_rateable "nota"

	validates :nota, presence: true
	validates :client_id, uniqueness: { scope: :answer_id, message: "¡Ya has entregado tu Calificacion!" }

    belongs_to :answer
    belongs_to :client
end
