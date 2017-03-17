class Estadoempresa < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :estado, :boolean, :default => false
  	remove_column :payments, :canceled
  	add_column :payments, :canceled,:boolean, :default => false
  end
end
