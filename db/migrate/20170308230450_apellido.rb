class Apellido < ActiveRecord::Migration[5.0]
  def change
  	add_column :clients, :apellido,:string
  end
end
