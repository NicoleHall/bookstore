class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :storage_type
      t.string :string

      t.timestamps
    end
  end
end
