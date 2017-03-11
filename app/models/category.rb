class Category < ApplicationRecord
	belongs_to :catalogo
	has_many :enterprises
	has_many :cotizacions
	validates :area,:nombre, presence: true
	validates_inclusion_of :area, :in => %w(construccion remodelacion)
	validates :nombre, uniqueness: {case_sensitive: false ,message: "ya existe esta categoria"}
	
	
	
end
