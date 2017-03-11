class AddThingToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :rut, :string
    add_column :clients, :nombre, :string
    add_column :clients, :telefono, :integer
    add_column :clients, :date_of_birth, :datetime
  end
end
