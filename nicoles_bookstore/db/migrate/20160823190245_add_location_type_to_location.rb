class AddLocationTypeToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :storage_type, :string
  end
end
