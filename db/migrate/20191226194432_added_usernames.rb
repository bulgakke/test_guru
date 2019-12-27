class AddedUsernames < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :username, default: :no_username
      t.string :status, default: :user
    end
  end
end
