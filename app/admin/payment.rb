ActiveAdmin.register Payment do
permit_params :canceled 
	filter :id
	filter :canceled
	scope :all, :default => true
	scope :No_pagados do |pagos|
		pagos.where(:canceled => false)
	end
  member_action :enterprises do
    @enterprise  = resource.enterprises
  end
	index do
 	selectable_column
    id_column
    column "Nombre_profesional", :empresa_nombre
    column "tiempo_plan", :tiempo_termino
    column('Recibida en', :created_at)
   end
show do
  attributes_table do
    row :id
    row :nombre_empresa, "Nombre_profesional"
    row :canceled
     row :imagen do |ad|
        image_tag ad.imagen.url

 end
 
end

end
form do |f|
      f.input :canceled
      f.actions
end
end