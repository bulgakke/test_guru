class User < ApplicationRecord
  has_and_belongs_to_many :tests
  has_many :tests

  scope :tests_taken_of_level, -> (level) { tests.where("level = ?", level) }

  validates :email, presence: true

end
