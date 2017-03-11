class Addcolumnscalificacion3 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :calificacions, :clientstar_id
  	remove_column :calificacions, :enterprisestar_id
  	add_column :calificacions, :client_id, :integer
  	add_column :calificacions, :enterprise_id, :integer
  end
end
