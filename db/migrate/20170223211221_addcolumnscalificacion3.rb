class Addcolumnscalificacion3 < ActiveRecord::Migration[5.0]
  def change
  	add_column :calificacions, :client_id, :integer
  	add_column :calificacions, :enterprise_id, :integer
  end
end
