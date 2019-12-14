class CreateTest < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :wish,   foreign_key: true
      t.string :test_name
      t.date :test_day
    end
  end
end
