class CreateCalificacions < ActiveRecord::Migration[5.0]
  def change
    create_table :calificacions do |t|

      t.timestamps
    end
  end
end
