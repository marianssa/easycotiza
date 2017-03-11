class AddColumnascotizacion < ActiveRecord::Migration[5.0]
  def change
  	add_column :cotizacions, :sector, :string
  	add_column :cotizacions, :area , :string
  	add_column :cotizacions, :category_id, :integer
  	add_foreign_key :cotizacions, :categories, column: :category_id, primary_key: "id"
  	add_column :cotizacions, :direccion, :string
  	add_column :cotizacions, :provincia, :string

  	
  end
end
