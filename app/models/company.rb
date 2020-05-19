class Company < ApplicationRecord
  after_create [:update_conglomerate, :create_tenant]

  has_many :products
  belongs_to :conglomerate
  validates :subdomain, uniqueness: true

  private
    def create_tenant
      Apartment::Tenant.create(subdomain)
    end

    def update_conglomerate
      conglomerate.company_subdomains.push(name)
      conglomerate.save
    end
end
