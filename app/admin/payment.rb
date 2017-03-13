ActiveAdmin.register Payment do

selectable_column
    	id_column
    	column "Nombre Empresa", :empresa_nombre
    	column "tiempo plan", :tiempo_termino
    	image_column :imagen, style: :thumb
end
