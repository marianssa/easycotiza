ActiveAdmin.register Enterprise do
    actions :all, :except => :edit
index do
		selectable_column
    	id_column
    	column "Nombre", :nombre
    	column "Rut", :rut
    	column "Telefono", :telefono
    	column "Correo", :email
    	column "Provincia", :provincia
    	column "Ultima conexion", :last_sign_in_at
    	column "Inicio de sesion", :current_sign_in_at
    	column "Ultima conexion", :last_sign_in_ip
    	column "Inicio de sesion", :current_sign_in_ip
    	column "Creado", :created_at
    	column "Actualizado", :updated_at
    	column "Descripcion", :descripcion
    end
    filter :nombre
    filter :rut
    filter :telefono
    filter :email
    filter :provincia

end
