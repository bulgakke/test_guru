class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author
  has_many :questions
  has_and_belongs_to_many :users

  def self.of_category(category_title)
    self.joins(:category).where("category_id = ?", category_title).order(title: :desc).pluck(:title)
  end
end
