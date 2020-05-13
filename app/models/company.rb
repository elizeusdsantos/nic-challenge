class Company < ApplicationRecord
  after_create :update_conglomerate

  belongs_to :conglomerate
  after_create :create_tenant
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
