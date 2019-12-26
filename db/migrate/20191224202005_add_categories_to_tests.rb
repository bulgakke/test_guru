class AddCategoriesToTests < ActiveRecord::Migration[6.0]
  def change
    change_table :tests do |t|
      t.references :category, foreign_key: true
    end
  end
end
