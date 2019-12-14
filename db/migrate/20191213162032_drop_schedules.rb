class DropSchedules < ActiveRecord::Migration[5.2]
  def change
    drop_table :Schedules
  end
end
