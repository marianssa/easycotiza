class Idanswer < ActiveRecord::Migration[5.0]
  def change
  	add_column :cotizacions,:answer_id, :integer
  	add_column :answers, :cotizacion_id, :integer

  end
end
