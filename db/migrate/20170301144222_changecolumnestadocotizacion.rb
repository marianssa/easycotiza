class Changecolumnestadocotizacion < ActiveRecord::Migration[5.0]
  def change
  	change_column :cotizacions, :estado,:boolean, :default =>false
  end
end
