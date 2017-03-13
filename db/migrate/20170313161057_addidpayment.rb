class Addidpayment < ActiveRecord::Migration[5.0]
  def change
  	add_column :payments, :enterprise_id, :integer
  	add_column :payments, :nombre_empresa, :string
  end
end
