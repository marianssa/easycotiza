class Addcolumnsenterprise < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :rut, :string
  	add_column :enterprises, :nombre, :string
  	add_column :enterprises, :telefono, :integer
  	add_column :enterprises, :fecha_de_inicio, :datetime
  end
end
