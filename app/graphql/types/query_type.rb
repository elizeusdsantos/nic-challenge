module Types
  class QueryType < Types::BaseObject
    field :conglomerates,
      [Types::ConglomerateType],
      null: false,
      description: "Returns a list of conglomerates"
    
    def conglomerates
      Conglomerate.all
    end

    field :companies,
      [Types::CompanyType],
      null: false,
      description: "Returns a list of conglomerates"

    def companies
      Company.all
    end

    field :products,
      [Types::ProductType],
      null: false,
      description: "Returns a list of products"

    def products
      Product.all
    end
  end
end
