class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :questions
  has_and_belongs_to_many :users

  scope :of_category, -> (category_title) { joins(:category).where(categories: { title: category_title } ) }
  scope :of_easy_level, -> { where(level: 0..1 ) }
  scope :of_medium_level, -> { where(level: 2..4 ) }
  scope :of_hard_level, -> { where(level: 5.. ) } 

  scope :of_level, -> (level) { where(level: level) }

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :title, uniqueness: { scope: :level, message: 'A test with this title already exists for this level' }

  def self.titles_of_category(category_title)
    of_category(category_title).order(title: :desc).pluck(:title)
  end
end
