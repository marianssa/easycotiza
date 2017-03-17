class Estadoempresa < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :estado, :boolean, :default => false
  end
end
