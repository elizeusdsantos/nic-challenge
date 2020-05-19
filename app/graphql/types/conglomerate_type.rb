module Types
  class ConglomerateType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :company_subdomains, [String], null: true
  end
end
