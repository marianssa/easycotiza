ActiveAdmin.register Enterprise do
    actions :all, :except => :edit
    permit_params :nombre,:email, :apellido, :password, :fecha_de_inicio, :telefono, :provincia, :rut, :password_confirmation, :descripcion
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
    form do |f|
    f.inputs "Empresa" do
      f.input :rut
      f.input :nombre
      f.input :apellido
      f.input :email
      f.input :provincia
      f.input :fecha_de_inicio
      f.input :telefono
      f.input :password
      f.input :password_confirmation
      f.input :descripcion
      f.actions
    end
    end
end
