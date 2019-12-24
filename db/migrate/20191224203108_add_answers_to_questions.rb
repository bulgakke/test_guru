class AddAnswersToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_reference :questions, :answers, foreign_key: true
  end
end
