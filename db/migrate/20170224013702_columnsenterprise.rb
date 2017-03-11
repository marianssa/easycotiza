class Columnsenterprise < ActiveRecord::Migration[5.0]
  def change
  	remove_column :enterprises, :comuna
  	add_column :enterprises, :category_id,:integer
  end
end
