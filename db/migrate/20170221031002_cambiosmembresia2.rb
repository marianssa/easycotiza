class Cambiosmembresia2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :membresia, :digital, :boolean
  	add_column :membresia, :popup, :boolean
  end
end
