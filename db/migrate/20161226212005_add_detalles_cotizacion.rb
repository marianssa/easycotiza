class AddDetallesCotizacion < ActiveRecord::Migration[5.0]
  def change
  	add_column :cotizacions, :tiempo, :string
  	add_column :clients, :provincia, :string
  	add_column :clients, :comuna, :string
  	add_column :enterprises, :provincia, :string
  	add_column :enterprises, :comuna, :string
  end
end
