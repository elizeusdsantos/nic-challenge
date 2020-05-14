require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    @company = Company.create!(name: "zero", subdomain: "zerosubdomain", employees_number: 0, location: "1,1", conglomerate: Conglomerate.first())
    get company_url(subdomain: @company.subdomain)
    assert_response :success
  end
end
