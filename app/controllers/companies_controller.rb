class CompaniesController < ApplicationController
  def show
    @company = Company.where(subdomain: request.subdomain).first
  end
end
