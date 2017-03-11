class AddKeys < ActiveRecord::Migration[5.0]
  def change
  	add_column :cotizacions, :client_id, :integer
  	add_foreign_key :cotizacions, :clients, column: :client_id, primary_key: "id"
  end
end
