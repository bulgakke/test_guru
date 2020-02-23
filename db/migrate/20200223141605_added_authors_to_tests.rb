class AddedAuthorsToTests < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.references :user, foreign_key: true
    end
    
    add_reference :tests, :author, foreign_key: true
  end
end
