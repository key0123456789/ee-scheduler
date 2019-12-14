class RemoveWishIdToChoise < ActiveRecord::Migration[5.2]
  def change
    remove_reference :choises, :wish, foreign_key: true
  end
end
