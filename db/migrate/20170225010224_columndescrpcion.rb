class Columndescrpcion < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :descripcion, :text
  end
end
