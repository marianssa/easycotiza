class Addcolumncateogria < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :area, :string
  end
end
