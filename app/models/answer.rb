class Answer < ApplicationRecord
	validates :answer_cotiza, :accept_date, :fecha, presence: true
	validates_inclusion_of :accept_date, :in => %w(aceptar rechazar)
	belongs_to :enterprise
	belongs_to :cotizacion
end
