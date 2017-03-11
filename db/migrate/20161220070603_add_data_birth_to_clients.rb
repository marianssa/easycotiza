class AddDataBirthToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :date_of_birth, :datetime
  end
end
