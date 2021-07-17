class AddedAuthorsToTests < ActiveRecord::Migration[6.0]
  def change
    change_table :tests do |t|
      t.references :author, references: :users, foreign_key: { to_table: :users}
    end
  end
end
