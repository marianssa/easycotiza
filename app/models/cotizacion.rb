class Cotizacion < ApplicationRecord
	has_many :answers
	belongs_to :client
	belongs_to :enterprise
	belongs_to :category
	validates :descripcion, :tiempo, :sector, :area, :provincia,:category_id, presence: true
	validates_inclusion_of :area, :in => %w(rural urbano)
	validates_inclusion_of :sector, :in => %w(publico privado)
	validates_inclusion_of :tiempo, :in => %w(soon 1a3 mas)
	
end
