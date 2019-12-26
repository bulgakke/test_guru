class DefaultValuesToTests < ActiveRecord::Migration[6.0]
  def change
    change_table :tests do |t|
      t.integer :level, default: 0
    end
  end
end
