class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :security_questionable
    has_many :calificacions     
    has_many :cotizacions
  
    validates :rut, :email, :date_of_birth, :provincia, presence: true
    validates :nombre, presence: true, length:{in:4..20, 
  		too_short:"Revisa el nombre ingresado, parece demasiado corto", 
		too_long:"Revisa el nombre ingresado, parece demasiado largo"}
  	validates_format_of :apellido, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/i,message: "Apellido de empresa invalido no se permiten numeros y/o metacaracteres"
	validates_format_of :nombre, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/i , message: "Nombre invalido no se permiten numeros"
	validates_uniqueness_of :rut
	validates :rut, rut: true, uniqueness: {case_sensitive: false,message:"Oops! ese rut ya esta registrado"}
	 validates :telefono, presence: true
	 validates :telefono, numericality: {only_integer: true}, length: {minimum: 9, maximum: 9, message: "Anteponer 9 a N° celular y 22 a N° de casa"}
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, format: { :with => VALID_EMAIL_REGEX, message: "El correo es invalido"}
	# valida que sea correo unico 
	validates :email, uniqueness: {case_sensitives: false, message: "ya esta registrado"}
	#validacion de rut con la gema rut_validation
	validates :rut, rut: true, message: "Debe agregar guion al rut"
	#para ser llamado para calificar
	ratyrate_rater
	validates :date_of_birth, acceptance: { accept: 'yes' }
end