ActiveAdmin.register Plane do
index do
		selectable_column
    	id_column
    	column "Nombre Plan", :nombre
    	column "Precio", :precio
    	column "Meses", :meses	
    	column "Descripcion", :descripcion
end
end
