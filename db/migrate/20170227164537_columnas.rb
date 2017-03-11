class Columnas < ActiveRecord::Migration[5.0]
  def change
  	add_column :cotizacions, :enterprise_id, :integer
  	add_column :answers, :enterprise_id, :integer
  end
end
