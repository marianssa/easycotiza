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
    	image_column :imagen, style: :thumb
    end

end
