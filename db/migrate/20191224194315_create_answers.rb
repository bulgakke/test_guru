class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.boolean, :correct
      t.text :body

      t.timestamps
    end
  end
end
