class Tiempotermino < ActiveRecord::Migration[5.0]
  def change
  	add_column :payments, :tiempo_termino, :datetime, :default =>nil
  	add_column :answers, :aceptacion ,:boolean, :default =>false
  end
end
