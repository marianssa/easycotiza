Rails.application.routes.draw do
  captcha_route
  resources :planes
  resources :catalogos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/rate' => 'rater#create', :as => 'rate'
  resources :catalogos
  resources :categories 
  devise_for :enterprises do
    get '/enterprises/sign_out' => 'devise/sessions#destroy'
end
resources :enterprises do
  resources :answers
end

  devise_for :clients
  root :to => "home#index"
  resources :paginaclients
  resources :paginaentreprise

  #Papa cliente hijo cotizacion
  resources :clients do
  	resources :cotizacions
    resources :calificacions
  end
  get '/solicitudes' => "paginaentrerprise#cotizacionesempresa"
  get '/cotizaciones' => "paginaentrerprise#cotizaciones"
  get '/catalogo' => 'categories#catalogo'
 
  get '/perfil' => 'profile#perfil'
 
  get '/clientes' => 'paginaclients#pageclient'
  get '/profesionales' => 'paginaentrerprise#pagenterprise'

  get '/respuestas_recibidas'=>'paginaclients#respuestas'

  get '/respuesta_aceptada'=>'paginaclients#answer_success'
  get '/nueva_contrasena' => 'paginaclients#new'


  resources :payments
end


