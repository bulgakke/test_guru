class Test < ApplicationRecord
  has_many :questions
  has_and_belongs_to_many :users
end
