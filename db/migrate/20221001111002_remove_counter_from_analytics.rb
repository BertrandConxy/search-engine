class RemoveCounterFromAnalytics < ActiveRecord::Migration[7.0]
  def change
    remove_column :analytics, :counter
  end
end
