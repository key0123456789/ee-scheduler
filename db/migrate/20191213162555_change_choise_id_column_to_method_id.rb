class ChangeChoiseIdColumnToMethodId < ActiveRecord::Migration[5.2]
  def change
    remove_reference :wishes, :choise, foreign_key: true
    add_reference :wishes, :method, foreign_key: true
  end
end
