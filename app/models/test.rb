class Test < ApplicationRecord
  has_many :questions
  has_and_belongs_to_many :users

  def self.of_category(category_title)
    to_return = []
    category_id = Category.find_by(id: category_title)
    self.where("category_id = ?", category_id).order(title: :desc).each do |test|
      to_return << test.title
    end
    return to_return
  end
end
