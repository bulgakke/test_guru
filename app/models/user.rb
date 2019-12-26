class User < ApplicationRecord
  has_and_belongs_to_many :tests

  def tests_taken_of_level(level)
    self.tests.where("level = ?", level)
  end
end
