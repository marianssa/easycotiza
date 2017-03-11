class Addcolumnspayments < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :amount, :integer
    add_column :payments, :token, :string
    add_column :payments, :identifier, :string
    add_column :payments, :payer_id, :string
    add_column :payments,:recurring, :boolean 
    add_column :payments  ,:digital, :boolean
    add_column :payments ,:popup, :boolean     
    add_column :payments  ,:completed, :boolean  
    add_column :payments ,:canceled, :boolean   
  
end

end
