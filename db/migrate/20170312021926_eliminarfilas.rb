class Eliminarfilas < ActiveRecord::Migration[5.0]
  def change
  	remove_column :payments, :recurring
  	remove_column :payments, :amount
  	remove_column :payments, :token
  	remove_column :payments, :popup
  	remove_column :payments, :digital
  end
end
