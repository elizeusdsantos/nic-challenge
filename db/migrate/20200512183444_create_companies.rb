class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :subdomain
      t.integer :employees_number
      t.string :location
      t.references :conglomerate, foreign_key: true

      t.timestamps
    end
  end
end
