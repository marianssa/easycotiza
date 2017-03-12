class Imagen < ActiveRecord::Migration[5.0]
  def change
  	add_column :payments,:imagen,:string
  	remove_column :answers, :fecha
  	add_column :answers, :fecha, :datetime
  end
end
