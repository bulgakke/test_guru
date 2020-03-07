class User < ApplicationRecord
  has_and_belongs_to_many :tests
  has_many :tests_created, class_name: 'Test', foreign_key: 'test_id'

  def tests_taken_of_level(level)
    self.tests.where("level = ?", level)
  end
end
