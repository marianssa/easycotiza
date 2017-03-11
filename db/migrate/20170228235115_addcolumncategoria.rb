class Addcolumncategoria < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :enterprise_id, :integer
  end
end
