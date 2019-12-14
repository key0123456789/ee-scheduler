class RemoveTestDayFromWish < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :test_day, :date
  end
end
