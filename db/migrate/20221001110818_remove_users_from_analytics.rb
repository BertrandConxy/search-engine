class RemoveUsersFromAnalytics < ActiveRecord::Migration[7.0]
  def change
    remove_column :analytics, :users
  end
end
