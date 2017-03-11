class Removecolumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :cotizacions,:codigo
  	remove_column :clients,:comuna
  	
  end
end
