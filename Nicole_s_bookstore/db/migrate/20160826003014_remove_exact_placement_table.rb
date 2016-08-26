class RemoveExactPlacementTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :exact_placements
  end
end
