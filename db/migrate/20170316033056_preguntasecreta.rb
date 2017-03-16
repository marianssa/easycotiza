class Preguntasecreta < ActiveRecord::Migration[5.0]
  def change
  	create_table :security_questions do |t|
  		t.string :locale, :null =>false
  		t.string :name, :null=>false
  	end

  add_column :clients, :security_question_id, :integer
  add_column :clients, :security_question_answer, :string
  add_column :enterprises, :security_question_id, :integer
  add_column :enterprises, :security_question_answer, :string

  end

  
end
