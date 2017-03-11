class Enterprise < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :calificacions
  belongs_to :category
  has_many :answers
  has_many :payments
  has_many :cotizacions
  attr_accessor :imagen, :imagen_cache, :remove_imagen
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   	validates :telefono, :nombre, :rut, :email,:provincia, presence: true, confirmation: true
	validates :telefono, numericality: {only_integer: true}
	#validates_format_of :nombre, :with => /\A[a-z]+\z/i, message: "Nombre de empresa invalido no se permiten numeros"
	validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/i,message: "Nombre de empresa invalido no se permiten numeros y/o metacaracteres"
  #validacion correo 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
	validates :email, format: { :with => VALID_EMAIL_REGEX, message: "El correo es invalido"},uniqueness:{case_sensitives: false, message: "Este email ya se encuentra registrado"}
	# valida que sea correo unico 
	validates :email, uniqueness: {case_sensitives: false, message: "ya esta registrado"}
	#valida que este correcto el mail 

	validates :rut, rut: true, uniqueness: {case_sensitives: false, message:"Este rut ya se encuentra registrado"}
  validates_uniqueness_of :rut
  validates :nombre, uniqueness: {case_sensitives: false, message: "EL nombre ya se encuetra registrado"}
	#imagen para referenciar donde se subira logo mediante clase FotoUploader
	mount_uploader :imagen, FotoUploader
	#+++++++++++++++++++++++++++++++++++++++
  	validates_presence_of   :imagen
  	validates_integrity_of  :imagen
  	validates_processing_of :imagen

  
end
