class Estadorespuesta < ActiveRecord::Migration[5.0]
  def change
  	add_column :answers, :estado, :boolean, :default =>false
  end
end
