class Payment < ApplicationRecord
  belongs_to :enterprises


  validates :identifier, uniqueness: true
  attr_accessor :imagen, :imagen_cache, :remove_imagen
  mount_uploader :imagen, FotoUploader
  #+++++++++++++++++++++++++++++++++++++++
    validates_presence_of   :imagen
    validates_integrity_of  :imagen
    validates_processing_of :imagen

 
  def tiempos
    if Time.now > self.tiempo_termino 
      self.tiempo_termino= 0
      self.canceled = false
    end
  end


 
end
