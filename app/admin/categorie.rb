ActiveAdmin.register Category do
	permit_params :area, :nombre
	index do
		selectable_column
    	id_column
    	column "Area", :area
    	column "Nombre", :nombre
	end
	filter :area
	filter :nombre
	form do |f|
      f.input :area
      f.input :nombre
    f.actions
  	end
end
