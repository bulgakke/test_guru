class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :body, presence: true
  validate :validates_number_of_answers

  private
  
  def validates_number_of_answers
    errors.add(:number_of_answers, 'Must be between 1 and 4') unless (1..4).include?(answers.size)
  end
end
