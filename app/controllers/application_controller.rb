class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
 	protect_from_forgery with: :null_session

before_action :configure_permitted_parameters, if: :devise_controller?


def configure_permitted_parameters
if resource_class == Client
 	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombre,:email, :password, :date_of_birth, :telefono, :provincia, :rut, :password_confirmation) }
 	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombre,:email, :password, :current_password, :date_of_birth, :telefono, :provincia, :rut, :password_confirmation) }
else
	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombre,:email, :password, :fecha_de_inicio, :telefono, :provincia, :rut, :password_confirmation,:imagen, :imagen_cache, :remove_imagen, :category_id, :descripcion) }
 	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombre,:email, :password, :current_password, :fecha_de_inicio, :telefono, :provincia, :rut, :password_confirmation, :imagen, :imagen_cache, :remove_imagen, :descripcion, :category_id) }
end
end
end