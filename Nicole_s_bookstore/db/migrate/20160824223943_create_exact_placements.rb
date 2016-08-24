class CreateExactPlacements < ActiveRecord::Migration[5.0]
  def change
    create_table :exact_placements do |t|
      t.string :name
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
