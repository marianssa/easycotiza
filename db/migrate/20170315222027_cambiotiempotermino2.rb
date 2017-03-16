class Cambiotiempotermino2 < ActiveRecord::Migration[5.0]
  def change
  	change_column :payments, :tiempo_termino, :datetime
  end
end
