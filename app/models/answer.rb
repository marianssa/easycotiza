class Answer < ApplicationRecord
	validates :answer_cotiza, :accept_date, presence: true
	validates_inclusion_of :accept_date, :in => %w(aceptar rechazar)
	belongs_to :enterprise
	belongs_to :cotizacion
	validates :answer_cotiza, presence: true,length: { maximum: 200 }
end
