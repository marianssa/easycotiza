class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :answer_cotiza
      t.string :accept_date
      t.string :fecha
      t.timestamps
    end
  end
end
