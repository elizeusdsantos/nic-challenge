class CreateConglomerates < ActiveRecord::Migration[5.2]
  def change
    create_table :conglomerates do |t|
      t.string :name
      t.string :company_subdomains, array: true, default: []

      t.timestamps
    end
  end
end
