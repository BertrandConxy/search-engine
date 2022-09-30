class CreateAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :analytics do |t|
      t.string :query
      t.string :session_id
      t.integer :articles
      t.integer :counter
      t.integer :users

      t.timestamps
    end
  end
end
