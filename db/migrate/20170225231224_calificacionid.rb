class Calificacionid < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :calificacion_id, :integer
  end
end
