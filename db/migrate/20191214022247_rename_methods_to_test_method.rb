class RenameMethodsToTestMethod < ActiveRecord::Migration[5.2]
  def change
    rename_table :methods, :test_methods
  end
end
