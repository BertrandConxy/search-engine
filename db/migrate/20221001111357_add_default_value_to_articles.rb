class AddDefaultValueToArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :analytics, :articles, :integer, default: 0
  end
end
