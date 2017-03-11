ActiveAdmin.register Category do

	index do
		selectable_column
    	id_column
    	column "Area", :area
    	column "Nombre", :nombre
	end
	filter :area
	filter :nombre
end
