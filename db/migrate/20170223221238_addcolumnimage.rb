class Addcolumnimage < ActiveRecord::Migration[5.0]
  def change
  	add_column :enterprises, :imagen, :string
  end
end
