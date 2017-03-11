class CreateCotizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :cotizacions do |t|
      t.string :codigo
      t.string :descripcion
      t.boolean :estado

      t.timestamps
    end
  end
end
