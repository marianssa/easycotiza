class Pagos < ActiveRecord::Migration[5.0]
  def change
  	add_column :payments, :plan_id, :integer
  	add_column :payments, :meses, :integer
  	add_column :payments, :precio, :integer
  end
end
