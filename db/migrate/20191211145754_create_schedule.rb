class CreateSchedule < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :choise,   foreign_key: true
      t.date     :application
      t.date     :result
    end
  end
end
