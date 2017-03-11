class UpdateForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :cotizacions, :clients
  	add_foreign_key :cotizacions,:clients, on_delete: :cascade
  end
end
