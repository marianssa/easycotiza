class Addcolumnscalificacion < ActiveRecord::Migration[5.0]
  def change
  	add_column :calificacion, :comentario, :string
  	add_column :calificacion, :enterprise, :string
  	add_column :calificacion, :client, :string
  end
end
