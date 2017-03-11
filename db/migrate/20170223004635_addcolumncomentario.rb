class Addcolumncomentario < ActiveRecord::Migration[5.0]
  def change
 	add_column :calificacions, :comentario, :string


  end
end
