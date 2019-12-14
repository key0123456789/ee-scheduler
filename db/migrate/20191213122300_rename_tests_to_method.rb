class RenameTestsToMethod < ActiveRecord::Migration[5.2]
  def change
    rename_table :tests, :methods
  end
end
