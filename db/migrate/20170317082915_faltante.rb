class Faltante < ActiveRecord::Migration[5.0]
  def change
  	add_column :calificacions, :answer_id, :integer
  end
end
