class Answer < ApplicationRecord
	validates :answer_cotiza, :accept_date, presence: true
	validates_inclusion_of :accept_date, :in => %w(aceptar rechazar)
	belongs_to :enterprise
	belongs_to :cotizacion
	validates :answer_cotiza, presence: true,length: { maximum: 200 }
	validates :enterprise_id, uniqueness: { scope: :cotizacion_id, message: "¡Ya has entregado tu respuesta!" }

    belongs_to :cotizacion
    belongs_to :enterprise
end
