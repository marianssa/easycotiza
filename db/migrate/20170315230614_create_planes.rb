class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.string :nombre
      t.integer :precio
      t.integer :meses
      t.string :descripcion

      t.timestamps
    end
  end
end
