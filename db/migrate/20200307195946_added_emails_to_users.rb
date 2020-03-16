class AddedEmailsToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :email, null: false, default: :no_email
    end
  end
end
