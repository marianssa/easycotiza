class Calificacion < ApplicationRecord
	belongs_to :enterprise
	belongs_to :client
    belongs_to :answer
	validates :comentario, presence: true, length:{in:1..100,  
		too_short:"Debes comentar con un maximo de 100 caracteres el servicio recibido", 
		too_long:"Comentario demasiado largo, maximo 100 caracteres"}
		
	ratyrate_rateable "nota"

	validates :nota, presence: true
	validates :client_id, uniqueness: { scope: :answer_id, message: "¡Ya has entregado tu Calificacion!" }

  
end
