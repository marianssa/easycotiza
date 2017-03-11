class CreateCatalogos < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogos do |t|

      t.timestamps
    end
  end
end
