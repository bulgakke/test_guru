class Answer < ApplicationRecord
  ANSWERS_MAX = 4

  belongs_to :question

  scope :correct_answers, -> { where(correct: true) }

  validates :body, presence: true

  validate :validates_number_of_answers

  private
  
  def validates_number_of_answers
    errors.add(:number_of_answers, "Total amount of answers cannot exceed #{ANSWERS_MAX}") if question.answers.size >= ANSWERS_MAX
  end

end
