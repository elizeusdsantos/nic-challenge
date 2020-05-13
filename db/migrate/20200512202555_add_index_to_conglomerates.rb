class AddIndexToConglomerates < ActiveRecord::Migration[5.2]
  def change
    add_index :conglomerates, :name, unique: true
  end
end
