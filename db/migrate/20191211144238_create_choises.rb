class CreateChoises < ActiveRecord::Migration[5.2]
  def change
    create_table :choises do |t|
      t.string      :college,   null: false
      t.string      :fuculty
      t.string      :department
      t.integer     :condition, null: false
    end
  end
end
