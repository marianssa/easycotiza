ActiveAdmin.register Payment do
	filter :id
	filter :canceled
	scope :all, :default => true
	scope :No_pagados do |pagos|
		pagos.where(:canceled => false)
	end
	index do
 	selectable_column
    id_column
    column "Nombre_Empresa", :empresa_nombre
    column "tiempo_plan", :tiempo_termino
    column('Recibida en', :created_at)
   end


show do
  attributes_table do
    row :id
    row :canceled
     row :imagen do |ad|
        image_tag ad.imagen.url
 end
  end
end
end
