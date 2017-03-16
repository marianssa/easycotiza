class Borrado < ActiveRecord::Migration[5.0]
  def change
  	remove_column :payments, :precio
  	remove_column :payments, :meses
  	remove_column :payments, :plan_id
  	add_column :payments, :plane_id, :integer
  end
end
