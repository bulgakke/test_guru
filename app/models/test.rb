class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :questions
  has_and_belongs_to_many :users

  scope :of_category, -> (category_title) { joins(:category).where("category_id = ?", category_title).order(title: :desc).pluck(:title) }

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :title, uniqueness: { scope: :level, message: 'A test with this title already exists for this level' }

end
