module Types
  class CompanyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :subdomain, String, null: false
    field :employees_number, Integer, null: false
    field :location, String, null: false
    # field :conglomerate_id, Integer, null: false
    # field :products, [Types::ProductType], null: true
  end
end
