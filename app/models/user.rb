class User < ApplicationRecord
  has_and_belongs_to_many :tests
  has_many :tests

  validates :email, presence: true

  def tests_taken_of_level(level)
    tests.of_level(level)
  end

end
