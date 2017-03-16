class Apellido2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :apellido, :string
  end
end
