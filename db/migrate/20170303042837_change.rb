class Change < ActiveRecord::Migration[5.0]
  def change
 	add_column :catalogos, :category_id, :integer
 	add_column :catalogos, :enterprise_id, :integer
 	add_column :catalogos, :cotizacion_id, :integer
  end
end
