class AddMethodToChoise < ActiveRecord::Migration[5.2]
  def change
    add_reference :methods, :choise, foreign_key: true
  end
end
