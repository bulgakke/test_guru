class AddQuestionsToTests < ActiveRecord::Migration[6.0]
  def change
    add_reference :tests, :questions, foreign_key: true
  end
end
