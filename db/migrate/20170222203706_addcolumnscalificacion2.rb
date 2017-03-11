class Addcolumnscalificacion2 < ActiveRecord::Migration[5.0]
  def change
	add_column :calificacions, :enterprisestar_id, :integer
  	add_column :calificacions, :clientstar_id, :integer
  	add_foreign_key :calificacions, :clients, column: :clientstar_id, primary_key: "id"
  	add_foreign_key :calificacions, :enterprises, column: :enterprisestar_id, primary_key: "id"

  end
end
