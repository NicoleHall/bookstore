class RemoveStringColumnFromLocation < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :string, :string
  end
end
